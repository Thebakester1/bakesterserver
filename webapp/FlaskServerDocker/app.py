from flask import Flask, render_template

bakester = Flask(__name__)

@bakester.route("/") #For default route
def main():
    return render_template("Home.html")

if(__name__ == "__main__"):
    bakester.run()