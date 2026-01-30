FROM mysql:8.0

# Копируем init script в стандартную папку
COPY ./mysql.sql /docker-entrypoint-initdb.d/

# Используем стандартный ENTRYPOINT от mysql:8.0
# Он автоматически выполнит скрипты из /docker-entrypoint-initdb.d/
