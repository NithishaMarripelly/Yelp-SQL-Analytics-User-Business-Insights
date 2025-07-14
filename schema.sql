-----------------------------------CREATING TABLES-----------------------------------------

CREATE TABLE businesses(
    business_id CHAR(22) PRIMARY KEY,
    business_name VARCHAR(64) NOT NULL,
    street_address VARCHAR(110),
    city VARCHAR(52),
    state VARCHAR(3),
    postal_code VARCHAR(7),
    latitude NUMERIC(8,6) NOT NULL,
    longitude NUMERIC(9,6) NOT NULL,
    average_reviews NUMERIC(2,1),
    no_of_reviews SMALLINT,
    open_or_close BOOLEAN NOT NULL
);

CREATE TABLE users(
    user_id CHAR(22) PRIMARY KEY,
    name VARCHAR(32) NOT NULL,
    reviews_by_user SMALLINT,
    user_joined TIMESTAMP,
    useful_votes INT,
    funny_votes INT,
    cool_votes INT,
    fans SMALLINT,
    avg_reviews NUMERIC(3,2),
    hot_compliments SMALLINT,
    more_compliments SMALLINT,
    profile_compliments SMALLINT,
    cute_compliments SMALLINT,
    list_compliments SMALLINT,
    note_compliments INT,
    plain_compliments INT,
    cool_compliments INT,
    funny_compliments INT,
    writer_compliments,SMALLINT
    photo_compliments INT
);

CREATE TABLE tempreviews(
    review_id CHAR(22) PRIMARY KEY,
    user_id CHAR(22),
    business_id CHAR(22),
    user_rating NUMERIC(2,1),
    users_marked_review_as_useful SMALLINT,
    users_marked_review_as_funny SMALLINT,
    users_marked_review_as_cool SMALLINT,
    review TEXT,
    review_date TIMESTAMP
);

CREATE TABLE reviews(
    review_id CHAR(22) PRIMARY KEY,
    user_id CHAR(22),
    business_id CHAR(22),
    user_rating NUMERIC(2,1),
    users_marked_review_as_useful SMALLINT,
    users_marked_review_as_funny SMALLINT,
    users_marked_review_as_cool SMALLINT,
    review TEXT,
    review_date TIMESTAMP
);

CREATE TABLE business_attributes(
    business_id CHAR(22),
    attribute_name VARCHAR(26),
    attribute_value VARCHAR(168),
    PRIMARY KEY(business_id,attribute_name)
);

CREATE TABLE business_categories(
    business_id CHAR(22),
    category_name VARCHAR(36)
);

CREATE TABLE business_hours(
    business_id CHAR(22),
    day VARCHAR(9),
    opening_time TIME,
    closing_time TIME,
    PRIMARY KEY(business_id,day)
);

CREATE TABLE tips(
    user_id CHAR(22),
    business_id CHAR(22),
    tip VARCHAR(524),
    tip_time TIMESTAMP,
    compliments_for_tip SMALLINT
);

CREATE TABLE user_eliteyears(
user_id CHAR(22),
year SMALLINT,
PRIMARY KEY(user_id,year)
);


------------------------------------------ ADDING CONSTRAINTS -------------------------------------------


ALTER TABLE businesses ADD CONSTRAINT businesses_review_avg CHECK (average_reviews BETWEEN 0.0 AND 5.0);

ALTER TABLE users ADD CONSTRAINT users_review_avg CHECK (avg_reviews BETWEEN 0.0 AND 5.0);

ALTER TABLE reviews ADD CONSTRAINT reviews_user_rating CHECK (user_rating BETWEEN 0.0 AND 5.0);

ALTER TABLE reviews ADD CONSTRAINT fk_reviews_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE reviews ADD CONSTRAINT fk_reviews_business_id FOREIGN KEY (business_id) REFERENCES businesses(business_id);

ALTER TABLE business_attributes ADD CONSTRAINT fk_attr_business_id FOREIGN KEY (business_id) REFERENCES businesses(business_id);

ALTER TABLE business_categories ADD CONSTRAINT fk_cat_business_id FOREIGN KEY (business_id) REFERENCES businesses(business_id);

ALTER TABLE business_hours ADD CONSTRAINT fk_hours_business_id FOREIGN KEY (business_id) REFERENCES businesses(business_id);

ALTER TABLE tips ADD CONSTRAINT fk_tips_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE tips ADD CONSTRAINT fk_tips_business_id FOREIGN KEY (business_id) REFERENCES businesses(business_id);

ALTER TABLE user_eliteyears ADD CONSTRAINT fk_elite_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);