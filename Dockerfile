FROM python:3.8
Run mkdir /app
RUN tar -xzf projet_python.tar.gz
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


COPY  app.py /app
WORKDIR /app

CMD python app.py