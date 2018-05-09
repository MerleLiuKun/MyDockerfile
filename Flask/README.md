## How to use.

This is an simple example for flask project with gunicorn.

#### 1. build

```
cd path/to/project
docker build -t project:latest .
```

#### 2. run

```
docker run --name test -p 8001:8001 -d project:latest
```

