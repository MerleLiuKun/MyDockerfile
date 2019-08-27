Simple docker compose for mongo.


First. move init file to init.d

```  sh
mkdir /data/mongo-entrypoint/
cp mongo-init.js /data/mongo-entrypoint/
```

Then. run

``` sh
sudo docker-compose up -d
```

If need rebuild.  use

``` sh
sudo docker-compose up --build -d
```