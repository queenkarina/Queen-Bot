# Using Python Slim-Buster
FROM xluxz/geezproject:buster
# RAM-UBOT
# Geez-UserBot
#yaudah iya

RUN git clone -b QUEEN-BOT https://github.com/queenkarina/Queen-Bot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/queenkarina/Queen-Bot/QUEEN-BOT/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
