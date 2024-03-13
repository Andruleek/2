# Використовуємо офіційний образ Python
FROM python:3.10

# Встановлюємо необхідні пакети
RUN pip install pipenv

# Копіюємо файли проекту в контейнер
COPY . /app

# Переходимо в робочу директорію проекту
WORKDIR /app

# Створюємо віртуальне середовище та встановлюємо залежності
RUN pipenv install --system --deploy

# Команда, яка запускає ваш додаток
CMD ["python", "123.py"]
