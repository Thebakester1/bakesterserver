from flask import Flask, redirect, render_template, request
import pyodbc

bakester = Flask(__name__)


def connection():
    s = 'localhost'  # Your server name
    port = '1433'
    d = 'bakester'
    u = 'sa'  # Your login
    p = 'iamAdmin@16;'  # Your login password
    # cstr = 'DRIVER={ODBC Driver 17 for SQL Server};SERVER='+s+';DATABASE='+d+';UID='+u+';PWD='+ p
    # conn = pyodbc.connect(cstr)
    cstr = 'DRIVER=ODBC Driver 17 for SQL Server;SERVER=' + \
        s+';PORT:'+port+';DATABASE='+d+';UID='+u+';PWD=' + p
    conn = pyodbc.connect(cstr)
    return conn

# @bakester.route("/oms", methods = ['GET','POST'])
# def oms():
#     orders=[]
#     if request.method == 'GET':
#         conn = connection()
#         cursor = conn.cursor()
#         cursor.execute("SELECT TOP (1000) [Order_ID],[Date],[Customer_ID],[Product_ID],[Description],[BillAmount] FROM [bakester].[dbo].[Orders]")
#     for row in cursor.fetchall():
#         orders.append({"order_id": row[0], "date": row[1], "customer_id": row[2], "product_id": row[3], "description": row[4], "billamount": row[5]})
#     conn.close()
#     return render_template("OMS.html", orders = orders)


@bakester.route("/oms", methods=['GET', 'POST'])
def oms():
    orders = []
    if request.method == 'GET':
        conn = connection()
        cursor = conn.cursor()
        cursor.execute(
            "SELECT TOP (1000) [Order_ID],[Date],[Customer_ID],[Product_ID],[Description],[BillAmount] FROM [bakester].[dbo].[Orders] ORDER BY [Date] ASC")
        for row in cursor.fetchall():
            orders.append({"order_id": row[0], "date": row[1], "customer_id": row[2],
                          "product_id": row[3], "description": row[4], "billamount": row[5]})
        conn.close()
        return render_template("OMS.html", orders=orders)

    if request.method == 'POST':
        order_id = int(request.form["order_id"])
        date = request.form["date"]
        customer_id = int(request.form["customer_id"])
        product_id = str(request.form["product_id"])
        description = str(request.form["description"])
        billamount = int(request.form["billamount"])
        conn = connection()
        cursor = conn.cursor()
        cursor.execute("INSERT INTO [bakester].[dbo].[Orders] (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) VALUES (?, ?, ?, ?, ?, ?) ",
                       order_id, date, customer_id, product_id, description, billamount)
        # cursor.execute(
        #     f"INSERT INTO [bakester].[dbo].[Orders] (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) VALUES({order_id}, {date}, {customer_id}, {product_id}, {description}, {billamount});")

        conn.commit()
        conn.close()
        return redirect('/oms')


@bakester.route("/")  # For default route
def main():
    return render_template("Home.html")


@bakester.route("/Home")  # For default route
def Home():
    return render_template("Home.html")


@bakester.route("/Menu")  # For default route
def Menu():
    return render_template("Menu.html")


@bakester.route("/place_order")  # For default route
def place_order():
    return render_template("PlaceOrder.html")


@bakester.route("/Contact")  # For default route
def Contact():
    return render_template("Contact.html")


@bakester.route("/About")  # For default route
def About():
    return render_template("About.html")

# @bakester.route("/oms") #For default route
# def OMS():
#     return render_template("OMS.html")


if (__name__ == "__main__"):
    bakester.run()
