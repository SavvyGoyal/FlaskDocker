FROM python:3.9.5-alpine
WORKDIR /HelloWorldAPI
RUN pip install -r requirements.txt
CMD ["python","app.py"]
