FROM python:
Run mkdir /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY  app.py /app
WORKDIR /app

CMD python app.py