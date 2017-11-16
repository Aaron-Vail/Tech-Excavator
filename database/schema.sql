-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

CREATE TABLE app_user (
    user_id SERIAL,
    email  VARCHAR(255) NOT NULL,
    hashed_password VARCHAR(255) NOT NULL,
    salt VARCHAR(255) NOT NULL,
    CONSTRAINT pk_user_id PRIMARY KEY (user_id)
);

COMMIT;
