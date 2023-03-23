FROM python:3.8-slim

RUN  apt --fix-broken -y install 
RUN apt-get update  
RUN apt-get update
RUN apt-get install -y \
    ca-certificates \
    g++ \
    curl \
    git \
    ffmpeg \
    libsm6 \
    libxext6 \
    libcurl4-openssl-dev \
    libssl-dev

WORKDIR /flaski12

COPY . .

RUN pip install -r requirement.txt

EXPOSE 8000

CMD ["gunicorn" ,"-w" ,"1", "--bind", "0.0.0.0:8000", "main:app", "--timeout", "300"]
