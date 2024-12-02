#!/bin/bash

# Install Go if not present
if ! command -v go &> /dev/null; then
    wget https://go.dev/dl/go1.21.4.linux-amd64.tar.gz
    sudo rm -rf /usr/local/go
    sudo tar -C /usr/local -xzf go1.21.4.linux-amd64.tar.gz
    export PATH=$PATH:/usr/local/go/bin
    rm go1.21.4.linux-amd64.tar.gz
fi


# Создаем корневую директорию проекта и переходим в нее
mkdir go-fullstack-app
cd go-fullstack-app

# Инициализируем Go проект
go mod init go-fullstack-app

# Создаем структуру директорий
mkdir -p internal/api/{handlers,middleware,router}
mkdir -p internal/{config,models,service}
mkdir -p internal/repository/{postgresql,opentsdb,redis}
mkdir -p internal/messaging/rabbitmq
mkdir -p pkg/{logger,errors}
mkdir -p web/templates/{pages,partials}
mkdir -p web/static/{css,js,img}
mkdir -p {scripts/{migrations,deployment},configs,docs,deployments}

# Создаем все необходимые файлы
touch main.go
touch internal/api/handlers/{handler.go,home_handler.go,about_handler.go,logs_handler.go}
touch internal/api/middleware/middleware.go
touch internal/api/router/router.go
touch internal/config/config.go
touch internal/models/models.go
touch internal/repository/{postgresql,opentsdb,redis}/repository.go
touch internal/service/service.go
touch internal/messaging/rabbitmq/{publisher.go,consumer.go}
touch pkg/logger/logger.go
touch pkg/errors/errors.go
touch web/templates/base.html
touch web/templates/pages/{home,about,logs}.html
touch web/templates/partials/{header,footer,navigation}.html
touch web/static/css/{main,components}.css
touch web/static/js/{main,utils}.js
touch {.env,.gitignore,go.mod,go.sum,Makefile,README.md}
touch configs/config.yaml
touch docs/{api.md,setup.md}
touch deployments/{docker-compose.yml,Dockerfile}

# Устанавливаем основные зависимости
go get github.com/gin-gonic/gin
go get github.com/lib/pq
go get github.com/go-redis/redis/v8
go get github.com/streadway/amqp

echo "Проект go-fullstack-app успешно создан!"

