CREATE TABLE employee (
    employee_nr    SMALLINT NOT NULL,
    employee_name   VARCHAR(32) NOT NULL,
    employee_salary   INTEGER,
    manager_nr    SMALLINT,
    store_nr   SMALLINT NOT NULL
 );

CREATE TABLE store (
    store_nr    SMALLINT NOT NULL,
    store_name   VARCHAR(32),
    store_phone_nr   INTEGER,
    store_street  VARCHAR(32),
    store_city    VARCHAR(32),
    store_house_nr  INT,
    store_zipcode  INT(5)
 );

CREATE TABLE movie(
    movie_nr SMALLINT NOT NULL,
    movie_title VARCHAR(64) NOT NULL,
    movie_runtime SMALLINT, -- in minutes
    movie_category VARCHAR(32)
);

CREATE TABLE member(
    member_nr SMALLINT NOT NULL,
    member_name VARCHAR(32) NOT NULL,
    member_adress VARCHAR(64),
    date_joined DATE,
    store_nr SMALLINT NOT NULL
);

CREATE TABLE movie_stock_status(
    movie_nr SMALLINT NOT NULL,
    store_nr SMALLINT NOT NULL,
    movie_stock SMALLINT,
    shelf_nr SMALLINT NOT NULL,
    movie_price INTEGER
);

CREATE TABLE reservation(
    member_nr SMALLINT NOT NULL,
    movie_nr SMALLINT NOT NULL,
    final_want_date DATE
);

CREATE TABLE rental(
    member_nr SMALLINT NOT NULL,
    movie_nr SMALLINT NOT NULL,
    rental_date DATE,
    return_date DATE
);

CREATE TABLE director(
    movie_nr SMALLINT NOT NULL,
    director_name VARCHAR(32)
);

CREATE TABLE actor(
    movie_nr SMALLINT NOT NULL,
    actor_name VARCHAR(32)
);
