# Лабораторна робота № 2 з Операційних систем
Тема: Основні команди системи контролю версій Git.    
Виконала студентка 3 курсу ІСТ Стреанга Теодора

# Завдання
1)	Пройти гру Git Learn та зробити скріншоти пройдених рівнів.
2)	Зробити git init папки із файлом  hello.txt та bash скриптом.
3)	Зробити git commit.
4)	Зробити git push у віддалений репозиторій у вітку lab_works_one_two.
5)	Додати в папку Readme файл із звітом до лабораторної, щоб його можна було передивлятись на репозиторію коли переходиш у вітку.
# Хід роботи
# 1. Гра Git Learn
![1-1](https://user-images.githubusercontent.com/95693614/197811231-267c36d2-559e-4a4e-865d-916d206a8428.png)
![1-2](https://user-images.githubusercontent.com/95693614/197811248-18b6b3ef-e7f6-42ea-90a0-8e4b438179a0.png)
![1-3](https://user-images.githubusercontent.com/95693614/197811259-476e0011-177d-45dd-b635-7c01281fa5c9.png)
# 2. Створення репозиторію
![2](https://user-images.githubusercontent.com/95693614/197811437-f8f6fe87-0839-4d56-863d-aa77b079b86c.png)    
git init – створення нового репозиторію
# 3. Перший коміт
![3](https://user-images.githubusercontent.com/95693614/197811639-59c559c5-5a68-48ec-a5dd-47c18a97f796.png)    
git  add . – додавання папки із усім її вмістом у репозиторій    
git коміт -м – створення нового коміту із повідомленням
# 4. Нова вітка та віддалений репозиторій
![4-1](https://user-images.githubusercontent.com/95693614/197811770-d121f88d-a293-48e4-aedb-7ed8547913a2.png)    
git checkout -b – створення та перехід до нової вітки 

Для того щоб передати зміни у віддалений репозиторій необхідно:   
1). Створити віддалений репозиторій    
![4-2](https://user-images.githubusercontent.com/95693614/197811930-c7465d66-de4f-40f3-99ed-46e9746b7b5f.png)    
2). Зв’язати його із локальним та перевірити його
![4-3](https://user-images.githubusercontent.com/95693614/197812016-8361ddc6-7ce9-463d-98dc-26b95ce7c5ce.png)    
3). Використати команду git push
![4-4](https://user-images.githubusercontent.com/95693614/197812067-63b0abb1-835e-4b57-8ed1-1eb7f7384426.png)
# 5. Додавання ReadMe файлу
![5-1](https://user-images.githubusercontent.com/95693614/197812437-f29d8fce-ffef-49af-9490-14625aa3f0bd.png)
![5-2](https://user-images.githubusercontent.com/95693614/197812436-db999b2f-ba80-4309-ad39-efcadd8b1662.png)
