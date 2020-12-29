create table User
(
    User_name       Varchar(255) not null
        primary key,
    User_account    Varchar(255) not null,
    Userpassword_id INTEGER      not null,
    Borough_id      INTEGER      not null
);

create table Borough
(
    Borough_id                              INTEGER      not null
        references User (Borough_id),
    Borough_code                            VARCHAR(9)   not null,
    Borough_name                            VARCHAR(255) not null,
    Borough_green_surface                   Float        not null,
    Public_transportation_accessibility2015 Float        not null,
    Weekly_income2017                       Float        not null,
    Houseprice_id                           INTEGER      not null
);

create table Houseprice
(
    Houseprice_id                  INTEGER not null
        references Borough (Houseprice_id),
    Sales_year_ending2017          INTEGER not null,
    Medium_year_ending2017         INTEGER not null,
    Lower_quartile_year_ending2017 INTEGER not null
);

create table Password
(
    Userpassword_id INTEGER      not null
        references User (Userpassword_id),
    User_password   Varchar(255) not null
);


