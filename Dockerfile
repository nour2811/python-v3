FROM python:3.8
RUN mkdir -p /app_python
COPY projet_python.tar.gz /app_python
WORKDIR /app_python
RUN tar xvf projet_python.tar.gz
WORKDIR /app_python/projet_python
RUN pip install --no-cache-dir -r requirements.txt
CMD python app.py