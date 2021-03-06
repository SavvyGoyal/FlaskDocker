FROM python:3.9.5-alpine
WORKDIR /HelloWorldAPI
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY /HelloWorldAPI/app.py app.py
COPY /HelloWorldAPI/templates templates
CMD ["python","app.py"]

