FROM python:3.8
RUN mkdir -p /app_python
COPY application.tar /app_python
WORKDIR /app_python
RUN tar -xvf application.tar
WORKDIR /app_python/application
RUN pip install --no-cache-dir -r requirements.txt
CMD python app.py