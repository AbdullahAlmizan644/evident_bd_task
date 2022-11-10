from flask import Flask,render_template,redirect,request,session,flash
from flask_mysqldb import MySQL
from datetime import datetime

app=Flask(__name__)
app.secret_key="xyz"

app.config['MYSQL_HOST']='127.0.0.1'
app.config['MYSQL_USER']='root'
app.config['MYSQL_PASSWORD']=''
app.config['MYSQL_DB']='evident_task'

mysql=MySQL(app)


@app.route("/",methods=["GET","POST"])
def home():
    if request.method=="POST":
        if "user" in session:
            input_value=request.form.get("input_value")
            search_value=request.form.get("search_value")

            f=input_value.split(",")
            for num in f:
                num=num+","

 
            cursor=mysql.connection.cursor()
            cursor.execute("SELECT * from users WHERE username=%s",(session["user"],))
            user=cursor.fetchone()


            cursor.execute("INSERT into data(user_id,username,data,input_datetime) VALUES(%s,%s,%s,%s)",(user[0],user[1],data_string,datetime.now(),))
            mysql.connection.commit()
            cursor.close()

            for number in f:
                if number==search_value:
                    flash("Result:True")
                    return redirect(request.url)

            flash("Result:False")
            return redirect(request.url)

        else:
            return redirect("/login")
    return render_template("home.html")



@app.route("/signup",methods=["GET","POST"])
def signup():
    if request.method=="POST":
        username=request.form.get("username")
        email=request.form.get("email")
        password1=request.form.get("password1")
        password2=request.form.get("password2")

        if(len(username)<4):
            flash("Username must be greater than 4 words",category="error")

        elif(len(email)<4):
            flash("email must be greater than 4 words",category="error")

        elif((len(password1)<7)):
            flash("password must be greate than 7 digit",category="error")

        elif(password1!=password2):
            flash("password doesn't match",category="error")
        
        else:
            cursor=mysql.connection.cursor()
            cursor.execute("INSERT INTO users(username,email,password) VALUES(%s,%s,%s)",(username,email,password1,))
            mysql.connection.commit()
            cursor.close()
            return redirect("/login")

    return render_template("signup.html")


@app.route("/login",methods=["GET","POST"])
def login():
    if request.method=="POST":
        username=request.form.get("username")
        password=request.form.get("password")
        cursor=mysql.connection.cursor()
        cursor.execute("SELECT * FROM users Where username=%s and password=%s",(username,password))
        user=cursor.fetchone()
        if user:
            session["user"]=username
            return redirect("/")
        
        else:
            flash("username or password not correct",category="error")
    return render_template("login.html")



@app.route("/logout")
def logout():
    session.pop("user")
    return redirect("/login")



if __name__=="__main__":
    app.run(debug=True)