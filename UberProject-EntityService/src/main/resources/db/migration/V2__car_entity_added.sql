CREATE TABLE car (
  id BIGINT NOT NULL,
   created_at datetime NOT NULL,
   updated_at datetime NOT NULL,
   plate_number VARCHAR(255) NOT NULL,
   brand VARCHAR(255) NULL,
   model VARCHAR(255) NULL,
   color_id BIGINT NULL,
   driver_id BIGINT NULL,
   car_type ENUM( 'XL', 'SEDAN','HATCHBACK', 'COMPACT_SUV', 'SUV') NULL,
   CONSTRAINT pk_car PRIMARY KEY (id)
);
CREATE TABLE color (
  id BIGINT NOT NULL,
   created_at datetime NOT NULL,
   updated_at datetime NOT NULL,
   name VARCHAR(255) NOT NULL,
   CONSTRAINT pk_color PRIMARY KEY (id)
);

ALTER TABLE color ADD CONSTRAINT uc_color_name UNIQUE (name);

ALTER TABLE car ADD CONSTRAINT uc_car_plate_number UNIQUE (plate_number);

ALTER TABLE car ADD CONSTRAINT FK_CAR_ON_COLOR FOREIGN KEY (color_id) REFERENCES color (id);

ALTER TABLE car ADD CONSTRAINT FK_CAR_ON_DRIVER FOREIGN KEY (driver_id) REFERENCES driver (id);