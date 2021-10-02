#docker hub dan image seçtik.
FROM python:alpine   

# kurulan makineye dockerfile ın bulunduğu klasördeki dosyaları alıp app klasörü altına kopyalayacak
COPY . /app  
WORKDIR /app

# requirements.txt dosyasının içeriğinde yazanları alıp kuracak
RUN pip install -r requirements.txt

# docker 80 potunu dinleyecek
EXPOSE 80

# biz bookstore-api-py dosyasını githuba atarken ismini app.py olarak değiştireceğiz.
# aşağıdaki komut conteyner çalışınca bu .py dosyasını çalıştıracak.
CMD python ./phonebook-app.py
