SQL HomeWork 2. Joins

Подключится к 
Host: 159.69.151.133
Port: 5056
DB: подключение к той таблице где делали DDL операции
User: подключение к тем пользователем каким делали DDL операции
Pass: 123

Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )


 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами - select e.employee_name, s.monthly_salary
                                                                            from employees as e
                                                                            join salary as s
                                                                            on e.id = s.id; 
 2. Вывести всех работников у которых ЗП меньше 2000 - select e.employee_name, s.monthly_salary
                                                       from employees as e
                                                       join salary as s
                                                       on e.id = s.id
                                                       where monthly_salary < '2000';
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.) - select e.employee_name, s.monthly_salary
                                                                                                                from employees as e
                                                                                                                right join salary as s
                                                                                                                on e.id = s.id
                                                                                                                where monthly_salary notnull and employee_name is null;
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.) - select e.employee_name, s.monthly_salary
                                                                                                                            from employees as e
                                                                                                                            right join salary as s
                                                                                                                            on e.id = s.id
                                                                                                                            where monthly_salary < '2000' and employee_name is null;
 5. Найти всех работников кому не начислена ЗП - select e.employee_name, s.monthly_salary
                                                 from employees as e
                                                 left join salary as s
                                                 on e.id = s.id
                                                 where employee_name notnull and monthly_salary is null;
 6. Вывести всех работников с названиями их должности - select e.employee_name, r.role_name
                                                        from employees as e
                                                        join roles as r
                                                        on e.id = r.id;
 7. Вывести имена и должность только Java разработчиков - select e.employee_name, r.role_name
                                                          from employees as e
                                                          join roles as r
                                                          on e.id = r.id
                                                          where role_name like '%Java%';
 8. Вывести имена и должность только Python разработчиков - select e.employee_name, r.role_name
                                                            from employees as e
                                                            join roles as r
                                                            on e.id = r.id
                                                            where role_name like '%Python%';
 9. Вывести имена и должность всех QA инженеров - select e.employee_name, r.role_name
                                                  from employees as e
                                                  join roles as r
                                                  on e.id = r.id
                                                  where role_name like '%QA engineer%';
 10. Вывести имена и должность ручных QA инженеров - select e.employee_name, r.role_name
                                                     from employees as e
                                                     join roles as r
                                                     on e.id = r.id
                                                     where role_name like '%QA engineer%';
 11. Вывести имена и должность автоматизаторов QA - select e.employee_name, r.role_name
                                                    from employees as e
                                                    join roles as r
                                                    on e.id = r.id
                                                    where role_name like '%Automation%';
 12. Вывести имена и зарплаты Junior специалистов - select e.employee_name, s.monthly_salary
                                                    from employees as e
                                                    join salary as s on e.id = s.id
                                                    join roles as r on e.id = r.id
                                                    where role_name like '%Junior%';
 13. Вывести имена и зарплаты Middle специалистов - select e.employee_name, s.monthly_salary
                                                    from employees as e
                                                    join salary as s on e.id = s.id
                                                    join roles as r on e.id = r.id
                                                    where role_name like '%Middle%';
 14. Вывести имена и зарплаты Senior специалистов - select e.employee_name, s.monthly_salary
                                                    from employees as e
                                                    join salary as s on e.id = s.id
                                                    join roles as r on e.id = r.id
                                                    where role_name like '%Senior%';
 15. Вывести зарплаты Java разработчиков - select s.monthly_salary
                                           from salary as s
                                           join roles as r
                                           on s.id = r.id
                                           where role_name like '%Java%';
 16. Вывести зарплаты Python разработчиков - select s.monthly_salary
                                             from salary as s
                                             join roles as r
                                             on s.id = r.id
                                             where role_name like '%Python%';
 17. Вывести имена и зарплаты Junior Python разработчиков - select e.employee_name, s.monthly_salary
                                                            from employees as e
                                                            join salary as s on e.id = s.id
                                                            join roles as r on e.id = r.id
                                                            where role_name like '%Junior Python%';
 18. Вывести имена и зарплаты Middle JS разработчиков - select e.employee_name, s.monthly_salary
                                                        from employees as e
                                                        join salary as s on e.id = s.id
                                                        join roles as r on e.id = r.id
                                                        where role_name like '%Middle J%S%';
 19. Вывести имена и зарплаты Senior Java разработчиков - select e.employee_name, s.monthly_salary
                                                          from employees as e
                                                          join salary as s on e.id = s.id
                                                          join roles as r on e.id = r.id
                                                          where role_name like '%Senior Java%';
 20. Вывести зарплаты Junior QA инженеров - select s.monthly_salary
                                            from salary as s
                                            join roles as r
                                            on s.id = r.id
                                            where role_name like '%Junior %QA%';
 21. Вывести среднюю зарплату всех Junior специалистов - select avg(s.monthly_salary)
                                                         from salary as s
                                                         join roles as r
                                                         on s.id = r.id 
                                                         where role_name like '%Junior%';
 22. Вывести сумму зарплат JS разработчиков - select sum(s.monthly_salary)
                                              from salary as s
                                              join roles as r
                                              on s.id = r.id
                                              where role_name like '%J%S%';
 23. Вывести минимальную ЗП QA инженеров - select min(s.monthly_salary)
                                           from salary as s
                                           join roles as r
                                           on s.id = r.id
                                           where role_name like '%QA engineer%';
 24. Вывести максимальную ЗП QA инженеров - select max(s.monthly_salary)
                                            from salary as s
                                            join roles as r
                                            on s.id = r.id
                                            where role_name like '%QA engineer%';
 25. Вывести количество QA инженеров - select count(role_name)
                                       from roles
                                       where role_name like '%QA engineer';
 26. Вывести количество Middle специалистов - select count(role_name)
                                              from roles
                                              where role_name like '%Middle%';
 27. Вывести количество разработчиков - select count(role_name)
                                        from roles
                                        where role_name like '%developer%';
 28. Вывести фонд (сумму) зарплаты разработчиков - select sum(s.monthly_salary)
                                                   from salary as s
                                                   join roles as r
                                                   on s.id = r.id
                                                   where role_name like '%developer%';
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию - select e.employee_name, s.monthly_salary, r.role_name
                                                                      from employees as e
                                                                      join salary as s on e.id = s.id
                                                                      join roles as r on e.id = r.id
                                                                      order by monthly_salary asc;
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300 - select e.employee_name, s.monthly_salary, r.role_name
                                                                                                                  from employees as e
                                                                                                                  join salary as s on e.id = s.id
                                                                                                                  join roles as r on e.id = r.id
                                                                                                                  where monthly_salary between '1700' and '2300'
                                                                                                                  order by monthly_salary asc;
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300 - select e.employee_name, s.monthly_salary, r.role_name
                                                                                                              from employees as e
                                                                                                              join salary as s on e.id = s.id
                                                                                                              join roles as r on e.id = r.id
                                                                                                              where monthly_salary < '2300'
                                                                                                              order by monthly_salary asc;
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000 - select e.employee_name, s.monthly_salary, r.role_name
                                                                                                                         from employees as e
                                                                                                                         join salary as s on e.id = s.id
                                                                                                                         join roles as r on e.id = r.id
                                                                                                                         where monthly_salary in ('1100','1500','2000')
                                                                                                                         order by monthly_salary asc;
