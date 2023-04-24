from flask import Flask, render_template
import pyodbc

bakester = Flask(__name__)

@bakester.route("/") #For default route
def main():
    return render_template("Home.html")

@bakester.route("/Home") #For default route
def Home():
    return render_template("Home.html")

@bakester.route("/Menu") #For default route
def Menu():
    return render_template("Menu.html")

@bakester.route("/place_order") #For default route
def place_order():
    return render_template("PlaceOrder.html")

@bakester.route("/Contact") #For default route
def Contact():
    return render_template("Contact.html")


@bakester.route("/About") #For default route
def About():
    return render_template("About.html")

@bakester.route("/oms") #For default route
def OMS():
    return render_template("OMS.html")


if(__name__ == "__main__"):
    bakester.run()