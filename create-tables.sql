create table person(
    person_id int primary key,
    name nvarchar(50),
    national_id int,
    person_role enum('student', 'ostad')
);

create table student(
    person_id int primary key,
    student_number int,
    major nvarchar(100),
    foreign key (person_id) references person(person_id)
);

create table ostad(
    person_id int primary key,
    ost_number int,
    department nvarchar(100),
    edu_degree nvarchar(50),
    foreign key (person_id) references person(person_id)
);

create table menu(
    food_id int primary key,
    food_name nvarchar(70),
    food_price decimal(7, 3),
    day enum('Shanbe', 'Yekshanbe', 'Doshanbe', 'Seshanbe', 'Charshanbe', 'Panjshanbe', 'Jome')
);

create table order_food(
    order_id int primary key,
    person_id int,
    food_id int,
    number int,
    foreign key (person_id) references person(person_id),
    foreign key (food_id) references menu(food_id)
);