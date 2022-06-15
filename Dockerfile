FROM nikolaik/python-nodejs:python3.9-nodejs18

# clonning repo 
RUN git clone https://github.com/Nobita-XD/music3.git /root/YukkiMusic

RUN pip install --upgrade pip

# working directory 
WORKDIR /root/YukkiMusic

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/YukkiMusic/bin:$PATH"

CMD ["python3","-m","YukkiMusic"]
