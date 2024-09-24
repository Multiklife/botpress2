# Используем базовый образ Node.js с Botpress
FROM botpress/server:v12_26_10

# Устанавливаем рабочую директорию в контейнере
WORKDIR /botpress

# Копируем необходимые файлы и данные
COPY ./botpress_data /botpress/data

# Открываем порты для работы Botpress
EXPOSE 3000
EXPOSE 5000

# Запуск Botpress
CMD ["./bp"]
