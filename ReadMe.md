# Лабораторна робота № 3 з Операційних систем
# Тема: Docker
Виконала студентка 3 курсу ІСТ
Стреанга Теодора
# Завдання    
# 1.Використання готових Docker Images.
Ознайомитись із готовими Docker Images які знаходяться на Docker Hub. Використати образ wordpress та розвернути сайт із безкоштовною темою. 
# 2) Використання Docker Compose. 
Описати теоретично що таке Docker Compose, чому саме розширення .yml а також навести переваги та недоліки його використання. Навести приклад створення та збирання образа за допомогою Docker Compose. 
# 3) Створення HTML сторінки та занесення її в Docker Image. Залити даний Docker Image на Docker Hub.
- Створити HTML сторінку із вашим ПІБ, групою та № Л.Р..
- Створити Docker Image із цією сторінкою.
- Реалізувати можливість запуску цієї сторінки з контейнера (потрібно sudo usermod -aG docker username сервер NGINX до прикладу). 
- Перевірити на працездатність контейнера на основі вашого образу. 
- Залити готовий образ на Docker Hub. 
# 4) Скачати Docker Image когось із групи і розвернути в себе контейнер з HTML сторінкою на порті 8086 ззовні. 
# Хід роботи 
# 1. Docker образ Wordpress 
1.1 Завантаження образу WordPress 
![1-1](https://user-images.githubusercontent.com/95693614/199526987-618a4eb5-1bc2-4e8f-ba63-322c9941f574.png) 
Рис.1.1 Образ wordpress 
![1-3](https://user-images.githubusercontent.com/95693614/199528271-deb7a793-c822-48f7-b5ed-0194e3286c06.png) 
![1-4](https://user-images.githubusercontent.com/95693614/199527213-09182fa0-1020-4ac2-8e53-8acfa02caa1c.png)    
Рис.1.2 Завантаження образу wordpress    
1.2 Створення файлу docker-compose.yml    
![1-5](https://user-images.githubusercontent.com/95693614/199527383-5a49545e-81a3-4ea5-9477-d7ade7102159.png)    
Рис.1.3 Створення файлу docker-compose.yml    
![1-6](https://user-images.githubusercontent.com/95693614/199527432-9fb036d0-2a53-42db-ae54-fc7b4c53e1ea.png)    
Рис.1.3 Текст файлу docker-compose.yml    
1.3 Запуск файлу    
Файл запускається за допомогою docker-compose up. Після цього відкриваємо браузер та переходимо за посиланням Localhost:8080/Lab-3_default    
8080 – Порт    
Lab-3_default – мережа     
![1-8](https://user-images.githubusercontent.com/95693614/199527881-966c6501-3840-4234-b979-c98eeeaf3000.png)    
![1-9](https://user-images.githubusercontent.com/95693614/199528106-f19a77e0-8e12-4463-ac52-8f7a4972d316.png)    
![1-10](https://user-images.githubusercontent.com/95693614/199528142-af907fed-8353-43bd-ac36-a2c2be108744.png)    
![1-11](https://user-images.githubusercontent.com/95693614/199528153-3d2ba203-b324-452f-ac72-c0708bc3405e.png)    
Рис.1.4 Результати запуску docker-compose 
# 2. Docker Compose та його використання
Docker Compose — інструмент для запуску та керування програмами із багатьма контейнерами. В порівнянні з Docker, Docker Compose керує кількома контейнерами, які входять до складу програми хоча ці платформи мають однакові можливості.    
Файл YAML (YML або ще YAML Ain't Markup Language) - зручний для читання формат даних, концептуально близький до мов розмітки, але орієнтований на зручність введення-виведення типових структур даних багатьох мов програмування.    
Основні переваги:    
•	YAML короткий і зрозумілий;    
•	YAML дуже виразний і розширний;    
•	YAML допускає простий потоковий інтерфейс;    
•	YAML використовує структури даних, характерні для мов програмування;    
•	YAML легко реалізується, (можливо, занадто легко);    
•	YAML використовує цілісну модель даних. Немає винятків — немає безладу.    
Приклад збирання/запуску образу docker-compose :    
![1-7](https://user-images.githubusercontent.com/95693614/199528668-00b814b0-c2a9-4e7a-9222-796374d7eb12.png)    
Рис.1.4 Збирання та запуск docker-compose 
# 3. HTML сторінка в Docker Image    
3.1 Створення HTML сторінки    
![3-1](https://user-images.githubusercontent.com/95693614/199528830-98188360-1b3b-4ed7-bcb6-8431ca9cecb9.png)    
Рис.1.6 Файл HTML сторінки    
![3-5](https://user-images.githubusercontent.com/95693614/199529034-5be91f61-3ef0-4f78-abe7-7aa15cdc8f03.png)    
Рис.1.7 HTML сторінки в браузері    
3.2 Створення Dockerfile    
![3-2](https://user-images.githubusercontent.com/95693614/199529148-03622948-4426-42f3-8107-4fab93449217.png)    
Рис.1.8 Текст Dockerfile    
3.3 Збирання образу    
![3-3](https://user-images.githubusercontent.com/95693614/199529313-90ed49d8-c153-41db-9cf3-fc71b2462056.png)    
Рис.1.9 Збирання образу    
3.4 Запуск образу    
![3-4](https://user-images.githubusercontent.com/95693614/199529410-ce18ac48-7a47-44c7-a8b2-f7ed55a86ec2.png)    
![bonus](https://user-images.githubusercontent.com/95693614/199529448-de9b27ad-f918-4ff2-9093-0edc8ec45443.png)    
Рис.1.10 Запуск образу    
3.5 Завантаження образу на Docker Hub    
![4-2](https://user-images.githubusercontent.com/95693614/199529709-227c45e1-2928-4cfa-8674-3df808db0b3b.png)    
![4-3](https://user-images.githubusercontent.com/95693614/199529723-e73fd330-78d2-4d27-b5d5-a05f0cee5b78.png)    
Рис.1.11 Завантажений образ на Docker Hub 
# 4. Розвернення HTML сторінки в іншому Docker Image     
4.1 Завантаження образу     
![5-2](https://user-images.githubusercontent.com/95693614/199530103-0017378b-b244-45a9-87d6-674ef1374faa.png)     
![5-1](https://user-images.githubusercontent.com/95693614/199530121-428c1c89-c58b-48b2-865c-e133e2ee1fc6.png)     
Рис.1.12 Завантаження образу     
4.2 Запуск образу     
![5-3](https://user-images.githubusercontent.com/95693614/199530290-4e5d8a4c-e937-4fa2-b6c4-b142931a55a9.png)     
![5-4](https://user-images.githubusercontent.com/95693614/199530299-0ce5c811-33de-4a51-bfd4-16148c293aa0.png)     
Рис.1.12 Запуск образу
