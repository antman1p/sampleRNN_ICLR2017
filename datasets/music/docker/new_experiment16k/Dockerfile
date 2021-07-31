FROM ubuntu:bionic

WORKDIR /dadabots_sampleRNN/datasets/music/

COPY new_experiment16k.py ./

ADD downloads ./downloads

RUN mkdir -p chunks

RUN apt-get update && apt-get upgrade -y
RUN apt-get install python-dev python-numpy python-setuptools libsndfile-dev libasound2-dev python-pip -y
RUN pip install -U pip
RUN pip install scikits.audiolab
RUN apt-get install ffmpeg -y

CMD ["python", "./new_experiment16k.py", "chunks", "downloads"]





