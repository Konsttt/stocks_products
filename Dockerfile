FROM python:3.10
COPY requirements.txt /stocks_products/requirements.txt
RUN pip install --no-cache-dir -r /stocks_products/requirements.txt
COPY . /stocks_products
WORKDIR stocks_products
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]

