FROM ramadhani892/ramutod:slim-buster

RUN git clone -b Queen-Bot https://github.com/queenkarina/Queen-Bot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/quinkarina/Queen-Bot/Queen-bot/requirements.txt

CMD ["python3","-m","userbot"]
