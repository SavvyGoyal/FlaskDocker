FROM python:3.9.5-alpine
WORKDIR /HelloWorldAPI
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
ENTRYPOINT ["python"]
CMD ["app.py"]

