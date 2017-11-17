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

CREATE TABLE plot(
    plot_id SERIAL,
    garden_id INT NOT NULL REFERENCES garden(garden_id),
    plot_json VARCHAR(1020),
    CONSTRAINT pk_plot_id PRIMARY KEY (plot_id)
);
CREATE TABLE plant(
    plant_id SERIAL,
    scientific_name VARCHAR(255) NOT NULL,
    common_name VARCHAR(255) NOT NULL,
    price_per_plant DECIMAL NOT NULL,
    area_per_plant DECIMAL NOT NULL,
    desired_light VARCHAR(255) NOT NULL,
    image_link VARCHAR(255) NOT NULL,
    planting_directions VARCHAR(1020) NOT NULL,
    CONSTRAINT pk_plant_id PRIMARY KEY (plant_id)
);

COMMIT;
