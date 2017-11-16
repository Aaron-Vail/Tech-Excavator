-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

CREATE TABLE app_user (
    user_id SERIAL,
    email  VARCHAR(255) NOT NULL,
    hashed_password VARCHAR(255) NOT NULL,
    salt VARCHAR(255) NOT NULL,
    admin BOOLEAN DEFAULT false,
    CONSTRAINT pk_user_id PRIMARY KEY (user_id)
);

CREATE TABLE garden(
    garden_id SERIAL,
    garden_name VARCHAR(255) NOT NULL,
    user_id INT NOT NULL REFERENCES app_user(user_id),
    CONSTRAINT pk_garden_id PRIMARY KEY (garden_id)
);

COMMIT;
