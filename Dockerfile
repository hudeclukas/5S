FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime

WORKDIR /5S-app

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y libgl1 \
        libglib2.0-0 -y

COPY Requirements.txt /5S-app/Requirements.txt

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r /5S-app/Requirements.txt
