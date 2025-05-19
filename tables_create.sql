create table person(
    id int primary key auto_increment,
    name nvarchar(255) not null,
    national_id nvarchar(10) unique,
    constraint chk_lenght check ( length(national_id) = 10 )
);

create table student(
    student_number int primary key auto_increment,
    person_id int not null,
    field nvarchar(255) not null,
    foreign key (person_id) references person(id)
);

create table professor(
    staff_id int primary key auto_increment,
    person_id int not null,
    department nvarchar(255) not null,
    academic_rank nvarchar(50) not null,
    foreign key (person_id) references person(id)
);

create table day(
    id int primary key auto_increment,
    day nvarchar(20) not null,
    date date not null unique
);

create table food(
    id int primary key auto_increment,
    food_name nvarchar(200) not null,
    price int not null
);

create table menu(
  id int primary key auto_increment,
  day_id int not null,
  food_id int not null,
  foreign key (day_id) references day(id),
  foreign key (food_id) references food(id)
);

create table order_list(
    id int primary key auto_increment,
    person_id int not null,
    day_id int not null,
    menu_id int not null,
    food_count int,
    foreign key (person_id) references person(id),
    foreign key (day_id) references day(id),
    foreign key (menu_id) references menu(id)
);

