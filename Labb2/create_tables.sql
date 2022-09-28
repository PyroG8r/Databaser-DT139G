CREATE TABLE employee (
    employee_nr    SMALLINT NOT NULL,
    employee_name   VARCHAR(32) NOT NULL,
    employee_salary   INTEGER,
    manager_nr    SMALLINT,
    store_nr   SMALLINT NOT NULL
 );

CREATE TABLE store (
    store_nr    SMALLINT NOT NULL,
    store_name   VARCHAR(32) NOT NULL,
    store_phone_nr   INTEGER NOT NULL,
    store_street  VARCHAR(32) NOT NULL,
    store_city    VARCHAR(32) NOT NULL,
    store_house_nr  INT,
    store_zipcode  INT(7)
 );

CREATE TABLE movie(
    movie_nr SMALLINT NOT NULL,
    movie_title VARCHAR(64) NOT NULL,
    movie_runtime SMALLINT NOT NULL, -- in minutes
    movie_category VARCHAR(32)
);

CREATE TABLE member(
    member_nr SMALLINT NOT NULL,
    member_name VARCHAR(32) NOT NULL,
    member_adress VARCHAR(64) NOT NULL,
    date_joined DATE NOT NULL,
    store_nr SMALLINT NOT NULL
);

CREATE TABLE movie_stock_status(
    movie_nr SMALLINT NOT NULL,
    store_nr SMALLINT NOT NULL,
    movie_stock SMALLINT NOT NULL,
    shelf_nr SMALLINT NOT NULL,
    movie_price INTEGER
);

CREATE TABLE reservation(
    member_nr SMALLINT NOT NULL,
    movie_nr SMALLINT NOT NULL,
    final_want_date DATE NOT NULL
);

CREATE TABLE rental(
    rental_nr SMALLINT NOT NULL,
    member_nr SMALLINT NOT NULL,
    movie_nr SMALLINT NOT NULL,
    rental_date DATE NOT NULL,
    return_date DATE NOT NULL
);

CREATE TABLE director(
    movie_nr SMALLINT NOT NULL,
    director_name VARCHAR(32)
);

CREATE TABLE actor(
    movie_nr SMALLINT NOT NULL,
    actor_name VARCHAR(32)
);
