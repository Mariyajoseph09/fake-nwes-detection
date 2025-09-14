# -*- coding: utf-8 -*-
#pip install keras tensorflow
#pip install pandas numpy 
#pip install hyperopt
#pip install fasttext
#pip install indic-numtowords
#pip install datefinder
#pip install scikit-learn



# INSTALL ALL OTHER NECESSARY PACKAGES if missing in your working system to use the imports

import numpy as np
import pandas as pd
import re
import keras
import sys
import os
import nltk

from nltk import word_tokenize
from nltk. corpus import stopwords
import requests


from keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences
from keras.utils.np_utils import to_categorical

from keras.layers import Embedding
from keras.layers import Dense, Input, Flatten
from keras.layers import Conv1D, MaxPooling1D, Embedding, Dropout
from keras.layers import concatenate

from keras.models import Model
from tensorflow.keras.optimizers import Adam
# from hyperopt import fmin, tpe, hp, STATUS_OK, Trials


def train():
    MAX_SEQUENCE_LENGTH = 1000
    MAX_NB_WORDS = 500000
    EMBEDDING_DIM = 100
    VALIDATION_SPLIT = 0.2
    #from google.colab import drive
    #drive.mount('/content/drive', force_remount=True)

    #specify correct path to the preprocessed dataset
    data_train = pd.read_csv('pre_pro.csv')
    texts = []
    labels = []
    for i in range(data_train.News.shape[0]):
        text = str(data_train.News[i])
        texts.append(text)
        labels.append(data_train.Label[i])

    tokenizer = Tokenizer(num_words=MAX_NB_WORDS , oov_token="<OOV>")
    tokenizer.fit_on_texts(texts)
    sequences = tokenizer.texts_to_sequences(texts)

    word_index = tokenizer.word_index
    print('Found %s unique tokens.' % len(word_index))
    # Pad input sequences
    data = pad_sequences(sequences, maxlen=MAX_SEQUENCE_LENGTH)
    labels = to_categorical(np.asarray(labels),num_classes = 2)

    # Train test validation Split
    from sklearn.model_selection import train_test_split

    np.random.seed(42)
    # Shuffle the data and labels
    indices = np.arange(len(labels))
    np.random.shuffle(indices)
    data = data[indices]
    labels = labels[indices]

    # Split the data into train, test, and validation sets
    x_train, x_test, y_train, y_test = train_test_split(data, labels, test_size=0.2, random_state=42)
    x_train, x_val, y_train, y_val = train_test_split(x_train, y_train, test_size=0.2, random_state=42)


    import fasttext.util

    #(SPECIFY CORRECT PATHS)

    # Load the PREPROCESSED Malayalam dataset
    df = pd.read_csv('pre_pro.csv')

    # Select only the News column
    news_df = df[['News']]

    # Save the News column to a text file  (give a path)
    with open('news_new.txt', 'w', encoding='utf-8') as f:
        for news in news_df['News']:
            f.write(news + '\n')

    # Train the FastText model
    ft = fasttext.train_unsupervised('news_new.txt', model='skipgram',dim=EMBEDDING_DIM)

    # Create the embedding matrix
    embedding_matrix = np.zeros((len(word_index) + 1, EMBEDDING_DIM))
    for word, i in word_index.items():
        embedding_vector = ft.get_word_vector(word)
        if embedding_vector is not None:
            embedding_matrix[i] = embedding_vector

    # Define the embedding layer
    embedding_layer = Embedding(len(word_index) + 1,
                                EMBEDDING_DIM,
                                weights=[embedding_matrix],
                                input_length=MAX_SEQUENCE_LENGTH)

    # Simple CNN model
    sequence_input = Input(shape=(MAX_SEQUENCE_LENGTH,), dtype='int32')
    embedded_sequences = embedding_layer(sequence_input)
    l_dropout = Dropout(0.4896688836729317)(embedded_sequences)
    l_cov1= Conv1D(80, 5, activation='relu')(l_dropout)
    l_pool1 = MaxPooling1D(5)(l_cov1)
    l_cov2 = Conv1D(80, 5, activation='relu')(l_pool1)
    l_pool2 = MaxPooling1D(5)(l_cov2)
    l_cov3 = Conv1D(80, 5, activation='relu')(l_pool2)
    l_pool3 = MaxPooling1D(35)(l_cov3)  # global max pooling
    l_flat = Flatten()(l_pool3)
    l_dense = Dense(352, activation='relu')(l_flat)
    preds = Dense(2, activation='sigmoid')(l_dense)

    modelop = Model(sequence_input, preds)
    modelop.compile(loss='binary_crossentropy',optimizer='Adam',metrics=['acc'])
     
    print("Fitting the simple convolutional neural network model")
    modelop.summary()

    history = modelop.fit(x_train, y_train, validation_data=(x_val, y_val),epochs=12, batch_size=96)
    modelop.save('model.h5')
    score = modelop.evaluate(x_test, y_test, verbose=0)
    print('Test loss:', score[0])
    print('Test accuracy:', score[1])

    from sklearn.metrics import classification_report

    # Predict on the test set
    y_pred = modelop.predict(x_test)

    # Convert probabilities to class labels
    y_pred = np.argmax(y_pred, axis=1)
    y_test = np.argmax(y_test, axis=1)

    # Get the classification report
    report = classification_report(y_test, y_pred, target_names=['Class 0', 'Class 1'])

    # Print the report
    print(report)

#PREPROCESS USER INPUT AND THEN CLASSIFY USING TRAINED MODEL 

def preprocess_input(input_text):
    import re
    from indic_numtowords import num2words 
    input_text = re.sub('[!..|?:;\'",.&()]', '', input_text)
    from dateutil.parser import parse
    words = ''
    for word in input_text.split():
        # Check if word is a number or date
        try:
            date = parse(word, dayfirst=True)
            # Convert date to words and add to words string
            words += num2words(date.day, lang='ml', variations=False) + ' '
            words += num2words(date.month, lang='ml', variations=False) + ' '
            words += num2words(date.year, lang='ml', variations=False) + ' '
        except ValueError:
            if word.isdigit():
                # Convert number to words and add to words string
                words += num2words(int(word), lang='ml', variations=False) + ' '
            else:
                # Add word as is to words string
                words += word + ' '
    processed_words = []
    for word in words.split():
        if any(char.isdigit() for char in word):
            num = ''.join(filter(str.isdigit, word))
            num_word = num2words(int(num), lang='ml', variations=False)
            word = word.replace(num, num_word)
        processed_words.append(word)
    input_text=' '.join(processed_words)
   

    # Remove English characters
    english_chars = re.compile(r'[A-Za-z]')
    input_text = re.sub(english_chars, '', words)
    
    # Load Malayalam stop words from txt file (GIVE CORRECT PATH)
    with open('malayalam_stopwords.txt', 'r', encoding='utf-8') as f:
        stopwords = set([line.strip() for line in f])
    
    # Remove stop words
    words = input_text.split()
    processed_words = []
    for word in words:
        if word not in stopwords:
            processed_words.append(word)
    
    # Return preprocessed text as a string
    return ' '.join(processed_words)

def predict(valss):
    from keras import backend as K
    K.clear_session()
    MAX_SEQUENCE_LENGTH = 1000
    MAX_NB_WORDS = 500000
    import pandas as pd
    data_train = pd.read_csv('pre_pro.csv')
    texts = []
    labels = []
    for i in range(data_train.News.shape[0]):
        text = str(data_train.News[i])
        texts.append(text)
        labels.append(data_train.Label[i])

    # Preprocess the user input
    tokenizer = Tokenizer(num_words=MAX_NB_WORDS , oov_token="<OOV>")
    tokenizer.fit_on_texts(texts)
    # input_text = input("Enter the news text to classify: ")
    preprocessed_text = preprocess_input(valss)
    # print(preprocessed_text)
    user_input = [preprocessed_text]
    user_seq = tokenizer.texts_to_sequences(user_input)
    user_data = pad_sequences(user_seq, maxlen=MAX_SEQUENCE_LENGTH)

    from keras.models import load_model
    # from tensorflow import keras
    # model = keras.models.load_model('modelop.h5')
    # model = load_model('modelop.h5')
    model = load_model('model.h5')

    # Predict the class using the trained model
    preds = model.predict(user_data)
    if preds[0][0] > preds[0][1]:
        out="Real"
    else:
        out="Fake"
    K.clear_session()
    return out

# train()
# outsss=predict("സുശാന്ത് സിംഗ് രജ്പുതിന്റെ പുനർജന്മ വാർത്ത;വൈറൽ സ്‌ക്രീൻഷോട്ട്")
# print("sssss",outsss)
# predict()

# predict()