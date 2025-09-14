from flask import *
from database import*


admin=Blueprint('admin',__name__)

@admin.route('/adminhome')
def admin_home():
	return render_template('adminhome.html')

@admin.route('/category',methods=['post','get'])
def category():
	data={}
# add
	if 'cat' in request.form:
		cate=request.form['category']
		k="insert into category values(null,'%s')"%(cate)
		insert(k)
		return redirect(url_for('admin.category'))
# delete
	if 'action' in request.args:
		action=request.args['action']
		c=request.args['cid']
	else:
		action=None
	if action=='delete':
		k="delete from category where C_ID='%s'"%(c)
		delete(k)
		return redirect(url_for('admin.category'))

# update
	if action=='update':
		h="select * from category where C_ID='%s'"%(c)
		data['up']=select(h)
	if 'update' in request.form:
		ca=request.form['category']
		g="update category set Category='%s' where C_ID='%s'"%(ca,c)
		update(g)
		return redirect(url_for('admin.category'))

# view
	h="select * from category"
	data['view']=select(h)
	return render_template('category.html',data=data)

@admin.route('/admin_newsagent',methods=['post','get'])
def admin_newsagent():
	data={}
	if'submit' in request.form:
		fname=request.form['fname']
		lname=request.form['lname']
		place=request.form['place']
		ph=request.form['ph']
		email=request.form['email']
		uname=request.form['uname']
		passw=request.form['pass']
		k="insert into login values(null,'%s','%s','newsagent')"%(uname,passw)
		log=insert(k)
		m="insert into news_agent values(null,'%s','%s','%s','%s','%s','%s')"%(log,fname,lname,place,ph,email)
		insert(m)
	if 'action' in request.args:
		action=request.args['action']
		n=request.args['aid']
		l=request.args['lid']
	else:
		action=None
	if action=='delete':
		m="delete from news_agent where Agent_ID='%s'"%(n)
		delete(m)
		h="delete from login where Login_ID='%s'"%(l)
		delete(h)
		return redirect(url_for('admin.admin_newsagent'))

	if action=='update':
		g="select * from news_agent where Agent_ID='%s'"%(n)
		data['up']=select(g)
	if 'update' in request.form:
		fname=request.form['fname']	
		lname=request.form['lname']
		place=request.form['place']
		ph=request.form['ph']
		email=request.form['email']
		y="update news_agent set Fname='%s',Lname='%s',Place='%s',Phone='%s',Email='%s' where Agent_ID='%s' "%(fname,lname,place,ph,email,n)
		update(y)
		return redirect(url_for('admin.admin_newsagent'))
	q="select * from news_agent"
	res=select(q)
	data['view']=res
	return render_template('newsagent.html',data=data)  




@admin.route('/veiw_new')
def veiw_new():
	data={}
	h="SELECT * FROM `news`INNER JOIN `news_agent`USING(`Agent_ID`)"
	data['vi']=select(h)
	return render_template('view_new_news.html',data=data)

@admin.route('/admin_view_complaint')
def admin_view_complaint():
	data={}
	j="select * from complaint inner join user using(user_id)"
	data['vie']=select(j)
	
	return render_template('admin_view_complaint.html',data=data)	

@admin.route('/replay_send',methods=['post','get'])
def replay():
	cid=request.args['cid']
	if 'Reply' in request.form:
		send=request.form['send']
		up="update complaint set Replay='%s' where Complaint_id='%s'"%(send,cid)
		update(up)
		return redirect(url_for('admin.admin_view_complaint'))

	return render_template('replay_send.html')
