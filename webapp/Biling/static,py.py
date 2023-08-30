from flask import Flask, render_template, request
from datetime import datetime
import os
from PIL import Image
import base64
import io

app = Flask(__name__)


@app.route("/bill", methods=['GET', 'POST'])
def oms():
    orders = []
    if request.method == 'GET':
        today = datetime.now().strftime("%d-%m-%Y")
        invoice_number = datetime.now().strftime("%d%m%Y")+'001'
        from_addr = {
            'company_name': 'The Baketser',
            'addr1': 'Madhumalti appartments 3, Satav chauk road,',
            'addr2': 'Jatharpeth, Akola, Maharashtra - 444005'
        }
        to_addr = {
            'person_name': 'Cutomer'
        }
        items = [
            {
                'title': 'product',
                'charge': 00.00
            }
        ]
        total = sum([i['charge'] for i in items])

        rendered = render_template('invoice.html',
                                   date=today,
                                   from_addr=from_addr,
                                   to_addr=to_addr,
                                   items=items,
                                   total=total,
                                   invoice_number=invoice_number)

        return rendered

    if request.method == 'POST':
        posted_data = request.get_json()
        print(posted_data)
        today = datetime.now().strftime("%d-%m-%Y")
        invoice_number = datetime.now().strftime("%d%m%Y-%H%M%S")
        from_addr = {
            "company_name": "The Baketser",
            "addr1": "Madhumalti appartments 3, Satav chauk road,",
            "addr2": "Jatharpeth, Akola, Maharashtra - 444005"
        }
        default_data = {
            "to_addr": {
                "person_name": "Customer1"
            },
            "items": [{
                "title": "Product",
                "charge": 0.00
            }]
        }
        to_addr = posted_data.get('to_addr', default_data['to_addr'])

        items = posted_data.get('items', default_data['items'])

        total = sum([i['charge'] for i in items])

        rendered = render_template('invoice.html',
                                   date=today,
                                   from_addr=from_addr,
                                   to_addr=to_addr,
                                   items=items,
                                   total=total,
                                   invoice_number=invoice_number)

        return rendered


if __name__ == '__main__':
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port, debug=True)
