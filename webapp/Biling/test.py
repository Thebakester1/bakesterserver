import pdfkit

url = "http://127.0.0.1:5000/"  # Replace with your desired URL
output_pdf = "output.pdf"    # Replace with the desired output file name

pdfkit.from_url(url, output_pdf)
print("PDF generated successfully!")
