FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


#ENTRYPOINT [“python”, “app.py”]
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]