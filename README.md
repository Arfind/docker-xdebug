# 基于docker Debug调试环境

## docker-compose.yaml

```yaml
version: '3'
services:
  xdebug3:
    image: e4stjun/xdebug3:latest
    container_name: xdebug3
    build:
      context: xdebug3
      dockerfile: Dockerfile
    ports:
      - "8888:80"
    volumes:
      - ./src:/var/www/html/:rw
      - ./conf:/etc/apache2/sites-enabled/
      - ./xdebug3/ini/:/usr/local/etc/php/conf.d/
    environment:
      - TZ=Asia/Shanghai
  db:
    image: mysql:8.0.33
    container_name: mysql8
    environment:
      MYSQL_ROOT_PASSWORD: password
    ports:
      - "3306:3306"
    volumes:
      - ./data:/var/lib/mysql

```

# 使用方法

将审计调试源码放在src文件夹，然后运行docker-compose up -d 就可以启动了。