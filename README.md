# Московские Школы Искусств

Приложение Московских Школ Искусств от команды Want Art

Подробная документация и презентация проекта доступна организаторам конкурса

Ссылка на скачивание APK для финала

https://drive.google.com/file/d/1z17QaqBCdblsERy6UF8OpgvX1dejfB_N/view?usp=drive_link

### Документация

Задача 20. Разработать мобильное приложение 
для образования в сфере искусства.

Команда: Want Art

#### Используемые технологии

#### FrontEnd:

Dart/Flutter 

#### Backend:

Python 3.11.1/Django Framework, Django Rest Framework

#### Database:

SQLite

#### Развёртывание FrontEnd:

1. Установка APK файла

#### Развёртывание Backend:

1. В терминале перейдите в директорию проекта, где находится файл manage.py.

2. Выполните команду для запуска сервера разработки: python manage.py runserver.

3. Сервер будет запущен по адресу http://127.0.0.1:8000/

# Пользовательские адреса

#### Новости				
		Список новостей		    http://37.140.192.90:8000/news/
                                get
                                response    [{'newsId': int,
                                             'title': str,
                                             'body': str,
                                             'publicationTime': timestamp,
                                             'pathToImage': '/media/news_images/<image>'},
                                             ...
                                             ]
		
		Новость по id		    http://37.140.192.90:8000/news/id<news_id>/
                                get
                                response    {'newsId': int,
                                             'title': str,
                                             'body': str,
                                             'publicationTime': timestamp,
                                             'school_id': int,
                                             'pathToImage': '/media/news_images/<image>'}


#### Регистрация и вход в аккаунт 	
		
		Регистрация		        http://37.140.192.90:8000/auth/sign_up/
                                post        {'email': str,
                                            'password': str,
                                            'birthday': timestamp,
                                            'firstName': str,
                                            'lastName': str,
                                            'middleName': str,
                                            'pathToImage': file,
                                            'phoneNumber': str,
                                            'interesDance': int,
                                            'interesMusic': int,
                                            'interesVisual': int,
                                            'interesTheatre': int}
                                response    {'userId': int}

		
		Вход в аккаунт 		    http://37.140.192.90:8000/auth/sign_in/
                                post        {'email': str,      
                                            'password':str}
                                response    {'userId': int}


#### Школы				

		Список школ		        http://37.140.192.90:8000/schools/
                                get         
                                response     [{'schoolId': int,
                                             'name': str,
                                             'description': str,
                                             'pathToImage': '/media/school_images/<image>',
                                             'address': str},
                                             ...
                                             ]
	
		Школа по id		        http://37.140.192.90:8000/schools/id<school_id>
                                get
                                response    {'schoolId': int,
                                             'creationTime': timestamp,
                                             'name': str,
                                             'description': str,
                                             'pathToImage': '/media/school_images/<image>',
                                             'phoneNumber': str,
                                             'address': str,
                                             'email': str,
                                             'workingTime': int,
                                             'teachers':[
                                                           {'teacherId': int,
                                                           'pathToImage': str,
                                                           'name': str},
                                                           ...
                                                        ]
                                             }

		Преподаватель школы	    http://37.140.192.90:8000/teachers/id<teacher_id>/
                                get
                                response     {'teacherId': int,
                                             'name': str,
                                             'pathToImage': '/media/teacher_images/<image>',
                                             'position': str,
                                             'disciplines': str,
                                             'education': str,
                                             'awards': int,
                                             'experience': str}
                                                 

        Отправить заявку школе   http://37.140.192.90:8000/schools/id<school_id>/enroll/
                                post         {'userId': int}
                                response     {'enrollId': int,
                                             'userId': int}


#### Профиль				

        Страница профиля        http://37.140.192.90:8000/profile/
                                post         {'userId': int}
                                response     {'userId': int,
                                             'password': str,
                                             'firstName': str,
                                             'lastName': str,
                                             'middleName': str,
                                             'phoneNumber': str,
                                             'birthday': timestamp,
                                             'email': str,
                                             'pathToImage': '/media/profile_images/<image>'
                                             'interesDance': int,
                                             'interesMusic': int,
                                             'interesTheatre': int,
                                             'interesVisual': int,
                                             'creationTime': timestamp,
                                             'isAdmin': bool,
                                             'ratingDance': int,
                                             'ratingMusic': int,
                                             'ratingTheatre': int,
                                             'ratingVisual': int}

#### Рейтинг				
        
        Страница рейтинга       http://37.140.192.90:8000/rating/
                                get
                                response        [{'firstName': str,
                                                'lastName': str,
                                                'pathToImage': '/media/profile_images/<image>',
                                                'ratingDance': int,
                                                'ratingMusic': int,
                                                'ratingTheatre': int,
                                                'ratingVisual': int,},
                                                ...
                                                ]
	

# Админ-панель
	
#### Новости 	

		Список новостей		    http://37.140.192.90:8000/news/admin/
                                get
                                response        [{'newsId': int,
                                                'title': str,
                                                'body': str,
                                                'publicationTime': timestamp,
                                                'pathToImage': '/media/news_images/<image>',
                                                'adminId': int,
                                                'schoolId': int},
                                                ...
                                                  ]
		
		Создать новость		    http://37.140.192.90:8000/news/admin/create/
                                post            {'title': str,
                                                'body': str,
                                                'pathToImage': file,
                                                'adminId': int,
                                                'schoolId': int}
                                response        {'newsId': int}


#### Заявки в школу
			
		Список заявок		    http://37.140.192.90:8000/enrolls/admin/
                                get             
                                post            [{'enrollId': int,
                                                'userId': int,
                                                'schoolId': int,
                                                'creationTime': timestamp,
                                                'status': bool},
                                                ...]


#### Школы

        Список школ             http://37.140.192.90:8000/schools/admin/
                                get     
                                response         [{'schoolId': int,
                                                'adminId': int,
                                                'creationTime': timestamp,
                                                'name': str,
                                                'description': str,
                                                'pathToImage': '/media/schools_images/<image>',
                                                'phoneNumber': str,
                                                'address': str,
                                                'email': str,
                                                'workingTime': int,
                                                'pathToSchoolMedia': str,
                                                'teachers':[{'teacherId': int,
                                                        'pathToImage': str}, ...],
                                                ...]


        Создать школу           http://37.140.192.90:8000/schools/admin/create/
                                post            {'name': str,
                                                'description': str,
                                                'phoneNumber': str,
                                                'address': str,
                                                'email': str,
                                                'pathToImage': file,
                                                'adminId': int,
                                                'workingTime': str,
                                                'pathToSchoolMedia': str,
                                                'teachers': [<int:teacherId>, <int:teacherId>, ...]}
                                response        {'schoolId': int}          



#### Преподаватели	

        Создать преподавателя   http://37.140.192.90:8000/teachers/admin/create/
                                post            {'adminId': int,
                                                'name': str,
                                                'position': str,
                                                'disciplines': str,
                                                'education': str,
                                                'awards': str,
                                                'experience': str,
                                                'pathToImage': file}
                                response        {'teacherId': int}

        Список преподавателей   http://37.140.192.90:8000/teachers/admin/
                                get
                                response        [{'name': str,
                                                'pathToImage': '/media/teacher_images/<image>',
                                                'teacherId': int},
                                                ...]

#### Пользователи

        Создать пользователя    http://37.140.192.90:8000/users/admin/create/
                                post            {'email': str,
                                                'password': str,
                                                'birthday': timestamp,
                                                'firstName': str,
                                                'lastName': str,
                                                'middleName': str,
                                                'pathToImage': file,
                                                'phoneNumber': str,
                                                'interesDance': int,
                                                'interesMusic': int,
                                                'interesVisual': int,
                                                'interesTheatre': int}
                                response         {'userId': int}

        Список пользователей    http://37.140.192.90:8000/users/admin/
                                get         
                                response        [{'userId': int,
                                                'password': str,
                                                'firstName': str,
                                                'lastName': str,
                                                'middleName': str,
                                                'phoneNumber': str,
                                                'birthday': timestamp,
                                                'email': str,
                                                'pathToImage': '/media/teacher_images/<image>'
                                                'interesDance': int,
                                                'interesMusic': int,
                                                'interesTheatre': int,
                                                'interesVisual': int,
                                                'creationTime': timestamp,
                                                'isAdmin': bool,
                                                'ratingDance': int,
                                                'ratingMusic': int,
                                                'ratingTheatre': int,
                                                'ratingVisual': int},
                                                ...]  

### Примечание

        Пример поля  'pathToImage': '/media/profile_images/photo_2023.jpg'


                                

                  
