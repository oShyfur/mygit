# Use an official Python runtime as a parent image 
FROM python:3.8-slim
ADD hello.py /
COPY . /app
WORKDIR /app
RUN pip3 install --trusted-host pypi.python.org Flask
#ENV NAME World
EXPOSE 4000
CMD ["python3", "./hello.py"]
