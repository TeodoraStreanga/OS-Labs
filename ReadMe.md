# Лабораторна робота № 6
# З Операційних систем
# Тема: Використання GitHub Actions     
Виконала студентка 3 курсу ІСТ      
Стреанга Теодора
# Завдання     
1)	Ознайомитись із поняттями CI/CD та GitHub Actions.       
2)	Задеплоїти проект на EC2 або VPS(за наявності) за допомогою GitHub Actions .       
3)	Ознайомитись із github pipelines та використати їх для реалізації CI/CD.
# Хід роботи
# 1.СI/CD та GitHub Actions     
У розробці програмного забезпечення CI/CD або CICD — це комбінована практика безперервної інтеграції (CI) і (частіше) безперервної доставки або (рідше) безперервного розгортання (CD). CI/CD об'єднує розробку, тестування і розгортання додатків.    
![1-1](https://user-images.githubusercontent.com/95693614/202556424-80a76b88-e044-4c7b-946f-ad90818dc8d1.png)      
Рис 1.1 Схема CI/CD      
GitHub Actions — це платформа безперервної інтеграції та безперервної доставки (CI/CD), яка дозволяє автоматизувати збірку, тестування та розгортання. Забезпечує створення робочих процесів (workflows), які створюють і тестують кожен запит на отримання до сховища, або розгортати об’єднані запити на отримання в робочому середовищі. GitHub Actions дозволяє запускати робочі процеси (workflows) безпосередньо в репозиторії.
# 2. Деплой проекту на EC2      
У процесі деплою використовувалися наступні сервіси:     
•	GitHub Actions (для деплою змін із репозиторію)     
•	AWS CodeDeploy (для зв’язку з інстанцією та самого деплою)     
Етапи деплою:      
1)Створення та підготовка проекту     
В цьому випадку це проста веб-сторінка яка матиме такий вигляд (рис 1.2):     
![2-1-1](https://user-images.githubusercontent.com/95693614/202556598-f9779e6b-600b-4c2e-a3ff-c92cbce6d956.png)     
Рис 1.2 Вигляд сторінки     
Крім самої сторінки були створені файли:     
appspec.yml – файл для організації деплою сервісом CodeDeploy.     
setup.sh – файл який встановлює та запускає Apache на інстанції.     
run.sh – файл який переносить вміст папки Web в репозиторії у папку /var/www/html на інстанції.     
![2-1-2](https://user-images.githubusercontent.com/95693614/202556870-beae0904-9900-457b-bc73-748b0df7dcc8.png)      
![2-1-3](https://user-images.githubusercontent.com/95693614/202556881-e266a2dd-f43e-4e6e-9218-ba51e5570e1b.png)     
![2-1-4](https://user-images.githubusercontent.com/95693614/202556898-63336a4a-3879-4c66-a779-1d76b6bc6857.png)     
Рис 1.3 Вміст файлів appspec.yml, setup.sh і run.sh     
![2-1-5](https://user-images.githubusercontent.com/95693614/202556981-0dd2eb39-2606-4f49-b9d6-46c384e197f2.png)      
Рис 1.4 Проект на GitHub      
2)Створення та підготовка інстанції ЕС2     
![2-2-1](https://user-images.githubusercontent.com/95693614/202557034-3ede9f9e-59a2-4609-bbdc-b5b544a10597.png)     
![2-2-2](https://user-images.githubusercontent.com/95693614/202557040-a4a13c9c-4a87-4e53-96cd-0f15ef938041.png)     
Рис 1.5 Cтворення інстанції EC2     
![2-2-3](https://user-images.githubusercontent.com/95693614/202557115-e0f173e8-9ed2-4637-be02-6b280b942b5e.png)     
![2-2-4](https://user-images.githubusercontent.com/95693614/202557131-7070bc34-0a72-4e95-bf03-7d7438f47df7.png)    
Рис 1.6 Встановлення ruby та wget на інстанцію     
3)Налаштування сервісу CodeDeploy     
![2-2-5](https://user-images.githubusercontent.com/95693614/202557206-2da89bec-2148-4c80-bbdc-dba968bd69fa.png)     
![2-3-1](https://user-images.githubusercontent.com/95693614/202557220-55dbb0b4-9852-47d8-9237-bd974d3173e6.png)     
![2-3-2](https://user-images.githubusercontent.com/95693614/202557229-e8e183d5-5224-426d-93a1-09f13aeff98d.png)    
Рис 1.7 Встановлення та перевірка активності codedeploy-agent на інстанції    
![2-3-3](https://user-images.githubusercontent.com/95693614/202557309-3bfed786-f62c-47a4-8cc0-1a021c0f08be.png)     
Рис 1.7 Консоль CodeDeploy     
![2-3-4](https://user-images.githubusercontent.com/95693614/202557363-5759d467-5f77-4da9-af3c-40a5c1d15f40.png)     
![2-3-5](https://user-images.githubusercontent.com/95693614/202557371-04038d65-f840-479f-b43d-3529fb3ccabf.png)     
![2-3-6](https://user-images.githubusercontent.com/95693614/202557385-0034b225-5540-4f10-a7f7-aba467d0469c.png)     
Рис 1.8 Створення додатка та деплой-групи    
4)Створення Workflow     
![2-4-1](https://user-images.githubusercontent.com/95693614/202557475-101f1918-283c-483a-bbe4-3b4bce12b2ce.png)     
![2-4-2](https://user-images.githubusercontent.com/95693614/202557484-eddd3267-f8fb-4529-8c19-25c35a421677.png)     
![2-4-3](https://user-images.githubusercontent.com/95693614/202557498-baacf209-1b17-4759-af2b-2bd4ce4b964a.png)    
Рис 1.9 Створення та вміст main.yaml
# Результати:     
![3-1](https://user-images.githubusercontent.com/95693614/202557570-0d5ae5e1-50db-4626-b7b1-fe772f97b5a8.png)      
Рис 1.10 Сторінка на інстанції     
![3-2](https://user-images.githubusercontent.com/95693614/202557616-57451e5e-107d-4d8a-b52e-d6ffd13d1f4c.png)     
![3-3](https://user-images.githubusercontent.com/95693614/202557624-fbec4231-cda9-4fc9-991b-5b37fd63194c.png)     
Рис 1.11 Зміна кольору тексту сторінки
