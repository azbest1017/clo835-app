FROM mysql:8.0

# Копируем init script в стандартную папку
COPY ./mysql.sql /docker-entrypoint-initdb.d/

# Use mysql_native_password for compatibility with older PyMySQL
CMD ["mysqld", "--default-authentication-plugin=mysql_native_password"]
