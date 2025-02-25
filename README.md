# Структура проекта Go
<br>Тестовый проект для проверки структуры проекта Go.

## Построение json файла конфигурации

## Генерация структуры проекта с помощью PlantUML
<br>Для преобразования JSON в PlantUML есть отличные инструменты:
1. Утилита командной строки:
```
npm install -g json2puml
```

2. Для VSCode есть два превосходных расширения:
* "PlantUML" by jebbs - для рендеринга PUML файлов
* "JSON to PlantUML" by Mebrahtom - для прямой конвертации JSON в PUML

2. После установки расширения "JSON to PlantUML" в VSCode:
* Открываете JSON файл
* Нажимаете F1
* Вводите команду "Convert JSON to PlantUML"
* Получаете готовую PUML диаграмму

3. Оба варианта отлично справляются с задачей визуализации JSON структур в виде PlantUML диаграмм.

## Ключевые моменты:
1. Секция "about":
* Корректно описывает современное Go-приложение
* Хороший набор технологий: PostgreSQL, OpenTSDB, Redis, RabbitMQ
* Gin Framework - отличный выбор для веб-интерфейса
2. Секция "environment":
* Все необходимые параметры для разработки присутствуют
* Стандартные порты для всех сервисов
* Корректные значения по умолчанию для локальной разработки
3. Структура проекта:
* Чистая архитектура с разделением на internal и pkg
* Правильная организация веб-части с templates/pages/partials
* Полный набор конфигураций и документации
* Хорошая организация обработчиков для разных страниц
* Продуманная структура для статических файлов
4. Особенно хорошие решения:
* Разделение шаблонов на base.html и отдельные страницы
* Выделение partial-компонентов
* Четкая структура для репозиториев разных БД
* Отдельный messaging модуль для RabbitMQ
* Наличие скриптов для миграций и деплоя

5. Структура полностью готова для разработки полноценного веб-приложения с микросервисной архитектурой.

## Построение диаграмм из json.json

## Построение диаграмм из файлов проекта
**_Из реального Go кода можно извлечь следующие дополнительные диаграммы:_**
* Sequence диаграммы для каждого HTTP endpoint'а, показывающие поток выполнения от handler через service до repository
* Class диаграммы на основе структур и интерфейсов из кода, отображающие связи между типами данных
* Entity-Relationship диаграммы на основе моделей данных и SQL миграций
* Activity диаграммы для бизнес-процессов, извлеченных из service layer
* State диаграммы для объектов, имеющих различные состояния в системе

**_Для получения таких диаграмм от Cody, промпты следует формировать так:_**

1. "Generate PlantUML sequence diagram for endpoint X showing flow from handler through all layers"

2. "Create PlantUML class diagram from Go structs and interfaces in following files: [список файлов]"

3. "Extract database schema from models/migrations and create PlantUML ER diagram"

4. "Create PlantUML activity diagram for business process X based on service implementation"

5. Важно указывать:
* Конкретные файлы для анализа
* Тип желаемой диаграммы
* Конкретный процесс/компонент для визуализации
* Формат вывода (PlantUML)

