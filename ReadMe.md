# Лабораторна робота № 4
# З Операційних систем
# Тема: Terraform    
Виконала студентка 3 курсу ІСТ    
Стреанга Теодора 
# Завдання    
Створити сценарій Terraform для забезпечення інфраструктури на сервісах GCP (або AWS)   
Вимоги:    
1. Створити одну інстанцію (образ: ubuntu 20.04)    
2. Дозволити передавання даних через HTTP/HTTPS    
3. Забезпечити один публічний SSH-ключ для створеної інстанції    
4. Встановити веб-сервер (Apache HTTP Server / NGINX HTTP Server) за допомогою консолі.    
# Хід роботи
# 1.Зв’язок Terraform із AWS    
Спочатку встановлюємо Terraform та робимо аккаунт в AWS.    
Після цього створюємо нового IAM користувача для їх зв'язку.     
![1-1](https://user-images.githubusercontent.com/95693614/201934215-8f279de7-9fee-467c-842e-86ab6a65358f.png)     
![1-2](https://user-images.githubusercontent.com/95693614/201934231-c5418ce2-8609-47a6-ad05-d361829a741e.png)     
![1-3](https://user-images.githubusercontent.com/95693614/201934241-190736ca-e4a6-4b94-a15d-79548d39fe71.png)     
Рис 1.1 Створення IAM користувача на сайті AWS      
Внаслідок цього ми отримуємо ключі доступу користувача, які знадобляться пізніше.
# 2.Створення проекту Terraform
Для проекту знадобляться такі файли як:      
Файл ключів: key-pair-main.tf      
![2-1-1](https://user-images.githubusercontent.com/95693614/201934483-9fef1fc9-9536-47aa-a9dd-a5911a3fe83c.png)      
![2-1-2](https://user-images.githubusercontent.com/95693614/201934504-96284b94-13e9-4c03-aad6-ab26ff87191a.png)     
Рис 1.2 Створення та вміст файлу key-pair-main.tf     
Файли змінних провайдеру: provider-variables.tf, terraform.tfvars, provider-main.tf.     
![2-2-1](https://user-images.githubusercontent.com/95693614/201934644-d115d8b8-5238-48be-a541-e235abaa40f8.png)      
Рис 1.3 Створення файлів
![2-2-2](https://user-images.githubusercontent.com/95693614/201934894-6dbf9920-7d69-4b98-9bdb-54f08eea16a5.png)      
![2-2-3](https://user-images.githubusercontent.com/95693614/201934857-1ccf39c3-bd96-465c-836a-b4563007edc0.png)     
![2-2-4](https://user-images.githubusercontent.com/95693614/201934927-9cbce9db-15fa-4ed2-89e4-b82c3e56871d.png)      
Рис 1.4 Вміст файлів provider-variables.tf, terraform.tfvars, provider-main.tf       
Файли мережі: network-variables.tf, network-main.tf, aws-user-data.sh (для завантаження Apache та створення сторінки).     
![2-3-1](https://user-images.githubusercontent.com/95693614/201935172-c3d1e52b-6c1f-4ad5-afc2-04867069c02d.png)       
![2-3-2](https://user-images.githubusercontent.com/95693614/201935195-11accc67-f73d-46a5-855a-539f67ed6349.png)      
![2-3-3](https://user-images.githubusercontent.com/95693614/201935228-acf9bb54-cc83-4b95-b13f-25841179e00f.png)      
Рис 1.5 Вміст файлів network-variables.tf, network-main.tf, aws-user-data.sh       
Файл версій Ubuntu: ubuntu-versions.tf    
![2-4-1](https://user-images.githubusercontent.com/95693614/201935401-f30e3537-ff4c-4cde-86c6-505b53fb2919.png)     
Рис 1.6 Вміст файлу ubuntu-versions.tf
Файли змінних Linux: linux-variables.tf, linux-vm-main.tf      
![2-5-1](https://user-images.githubusercontent.com/95693614/201935520-bdf2e835-dc20-433b-baf8-7f73e144977f.png)      
![2-5-2](https://user-images.githubusercontent.com/95693614/201935532-626dc8a1-1f9e-429b-9e3f-278494568d6e.png)      
Рис 1.7 Вміст файлів linux-variables.tf, linux-vm-main.tf      
![2-5-3](https://user-images.githubusercontent.com/95693614/201935567-c94877f4-1bbe-4d1a-8227-162b9929bb09.png)       
![2-5-4](https://user-images.githubusercontent.com/95693614/201935592-2fd313fd-5d6c-4e17-9e76-2bb941d89b0f.png)     
Рис 1.8 Створення інстанції EC2 та Elastic IP     
Після додавання файлів доповнюємо файл terraform.tfvars     
![2-5-5](https://user-images.githubusercontent.com/95693614/201935780-52c5d67b-d15c-42a7-8ee5-3257c8518750.png)      
Рис 1.9 Доповнений файл terraform.tfvars     
![2-5-6](https://user-images.githubusercontent.com/95693614/201935844-bc33c48f-5404-4300-9faa-6280a602d46e.png)     
Рис 1.10 Фінальний вигляд проекту
# 3.Підняття серверу      
Увесь проект спочатку ініціалізується за допомогою команд terraform init      
![3-1](https://user-images.githubusercontent.com/95693614/201936176-5339cebb-2445-48a6-bccc-88d95e7c54a2.png)      
![3-2](https://user-images.githubusercontent.com/95693614/201936191-5df042f9-b73b-4c71-a43f-943d49322135.png)     
Рис 1.10 Результат командb terraform init        
Команди terraform plan та terraform apply дозволяють переглянути та застосувати конфігурації що описані у файлах до нашої інфраструктури.      
![3-3](https://user-images.githubusercontent.com/95693614/201936210-db5ade8d-6d91-4331-a8ca-4f4816f469ae.png)       
![3-4](https://user-images.githubusercontent.com/95693614/201936222-4bf3fb08-80f2-4f27-9d39-388cb46cbd8d.png)     
Рис 1.11 Результат команд terraform plan та terraform apply     
![3-5](https://user-images.githubusercontent.com/95693614/201936242-3b86c29c-ab76-4b44-91da-a2ba04f21550.png)      
Рис 1.12 Cтворений інстанс на сайті AWS     
Цю інстанцію можна у будь-який момент знищити за допомогою команди terraform destroy.    
# Демонстранція результатів     
![4-1](https://user-images.githubusercontent.com/95693614/201936433-4bc2f7bc-17da-4750-bbb2-0f41aabd96c9.png)     
Рис 1.13 Сторінка інстанції      
![4-2](https://user-images.githubusercontent.com/95693614/201936526-16061840-f109-4502-bba1-21def25ec3c2.png)     
![4-3](https://user-images.githubusercontent.com/95693614/201936543-784ca92c-6793-4270-a6ae-a2c670c9b29f.png)     
Рис 1.14 Вхід на Ubuntu за допомогою SSH-ключа
