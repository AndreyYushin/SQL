SQL_HW_1
Создать .sql файл в котором под каждой командой напишите sql запрос который выполнит команду.

.sql файл выгружайте на гит и скидывайте ссылки на проверку.

 1. Вывести все поля и все строки - select * from <table name> ;
 2. Вывести всех студентов в таблице - select students 
                                       from <table name>;
 3. Вывести только Id пользователей - select id 
                                      from <table name>;
 4. Вывести только имя пользователей - select name 
                                       from <table name>;
 5. Вывести только email пользователей - select email 
                                         from <table name>;
 6. Вывести имя и email пользователей - select name, email 
                                        from <table name>;
 7. Вывести id, имя, email и дату создания пользователей - select id, users_name, email, date
                                                           from <table name>;
 8. Вывести пользователей где password 12333 - select users_name, user_password 
                                               from <table name> where user_password = 12333;
 9. Вывести пользователей, которые были созданы 2021-03-26 00:00:00 = select users_name, date 
                                                                      from <table name> where date = 2021-03-26 00:00:00;
 10. Вывести пользователей где в имени есть слово Анна - select users 
                                                         from <table name> where users_name like '%Анна%';
 11. Вывести пользователей где в имени в конце есть 8 = select users 
                                                        from <table name> where users_name like '%8';
 12. Вывести пользователей где в имени есть буква а = select users 
                                                      from <table name> where user_name like '%a%';
 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00 = select users_name, date 
                                                                      from <table name> 
																	  where date = 2021-07-12 00:00:00;
 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313 = select users_name, date, password 
                                                                                           from <table name> 
																						   where date = 2021-07-12 00:00:00 and password = 1m313;
 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey = select users_name, date 
                                                                                                            from <table name> 
																											where date = 2021-07-12 00:00:00 and users_name like '%Andrey%';
 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8 = select users_name, date 
                                                                                                       from <table name> 
																									   where date = 2021-07-12 00:00:00 and users_name like '%8%';
 17. Вывести пользователя у которых id равен 110 = select users_name, id 
                                                   from <table name> 
												   where id = 110;
 18. Вывести пользователя у которых id равен 153 = select users_name, id 
                                                   from <table name> 
												   where id = 153;
 19. Вывести пользователя у которых id больше 140 = select users_name, id 
                                                    from <table name> 
													where id > 140;
 20. Вывести пользователя у которых id меньше 130 = select users_name, id
                                                    from <table name>
													where id < 130;
 21. Вывести пользователя у которых id меньше 127 или больше 188 = select users_name, id
                                                                   from <table name>
																   where id < 127 or id > 188;
 22. Вывести пользователя у которых id меньше либо равно 137 = select users_name, id
                                                               from <table name>
                                                               where id <= 137;															   
 23. Вывести пользователя у которых id больше либо равно 137 = select users_name, id
                                                               from <table name>
                                                               where id >= 137;
 24. Вывести пользователя у которых id больше 180 но меньше 190 = select users_name, id
                                                                  from <table name>
																  where id > 180 and id < 190;
 25. Вывести пользователя у которых id между 180 и 190 = select user_name, id
                                                         from <table name>
														 where id between 180 and 190;
 26. Вывести пользователей где password равен 12333, 1m313, 123313 = select users_name, password
                                                                     from <table name>
																	 where password in (12333, 1m313, 123313);
 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00 = select users_name, created_on
                                                                                                                from <table name>
																												where created_on in (2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00);
 28. Вывести минимальный id = select min(id) 
                              from <table name>;
 29. Вывести максимальный id = select max(id) 
                               from <table name>; 
 30. Вывести количество пользователей = select count(users) 
                                        from <table name>;
 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля = select user_id, user_name, user_date
                                                                                                                                    order by user_date asc;
 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля = select user_id, user_name, user_date
                                                                                                                                 order by user_name desc;
