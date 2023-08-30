from flask import Flask,render_template
from datetime import datetime
import os
from PIL import Image
import base64
import io

app = Flask(__name__)

@app.route('/')
def hello_world():
    today = datetime.now().strftime("%d-%m-%Y")
    invoice_number = datetime.now().strftime("%d%m%Y")+'001'
    from_addr = {
        'company_name': 'The Baketser',
        'addr1': 'Madhumalti appartments 3, Satav chauk road,',
        'addr2': 'Jatharpeth, Akola, Maharashtra - 444005'
    }
    to_addr = {
        'person_name': 'Leader Medical systems'
    }
    items = [
        {
            'title': 'Truffle cake - 1Kg',
            'charge': 900.00
        }
    ]
    total = sum([i['charge'] for i in items])
    
    rendered = render_template('invoice.html',
                            date = today,
                            from_addr = from_addr,
                            to_addr = to_addr,
                            items = items,
                            total = total,
                            invoice_number = invoice_number)
    
    
    return rendered
if __name__ == '__main__':
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)