FROM nikolaik/python-nodejs:python3.9-nodejs18

# clonning repo 
RUN apt-get update -y && \
    apt-get install -yqq locales  && \
    apt-get install -yqq \
        python3-pip \
        git \
        ffmpeg && \
    git clone https://github.com/Nobita-XD/music3.git && \
    cd music3 && \
    git clone https://github.com/pytgcalls/pytgcalls.git && \
    cd pytgcalls/ && \
    npm install && \
    npm run prepare && \
    
    
    cd /music3 && \
    pip3 install -U -r requirements.txt

ENV PATH="/home/YukkiMusic/bin:$PATH"

CMD ["python3","-m","YukkiMusic"]
