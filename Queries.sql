------------------------------  LOADING DATA INTO TABLES -------------------------------

COPY businesses FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/businesses.csv' CSV;

COPY users FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/users/users/users_part0.csv' CSV;
COPY users FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/users/users/users_part1.csv' CSV;
COPY users FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/users/users/users_part2.csv' CSV;
CREATE INDEX idx_users_userid ON Users (user_id);

COPY business_attributes FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_attributes.csv' CSV;

COPY business_categories FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_categories.csv' CSV;
CREATE INDEX idx_businessid_categoryname ON business_categories (business_id, category_name);

COPY business_hours FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_hours.csv' CSV;

COPY tips FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/tips.csv' CSV;
CREATE INDEX idx_tips_userid_tiptime ON tips (user_id, tip_time);

COPY user_eliteyears FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/user_elite_years.csv' CSV;

COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part0.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part1.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part2.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part3.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part4.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part5.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part6.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part7.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part8.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part9.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part10.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part11.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part12.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part13.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part14.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part15.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part16.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part17.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part18.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part19.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part20.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part21.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part22.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part23.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part24.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part25.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part26.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part27.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part28.csv' CSV;
COPY tempreviews FROM 'C:/Program Files/PostgreSQL/15/data/msit-3860-final-project-data/business_reviews/business_reviews/business_reviews_part29.csv' CSV;
CREATE INDEX idx_tempreviews_reviewid ON tempreviews (review_id);

INSERT INTO reviews (review_id, user_id, business_id, user_rating, users_marked_review_as_useful, users_marked_review_as_funny, users_marked_review_as_cool, review, review_date)
SELECT
    review_id, user_id, business_id, user_rating, users_marked_review_as_useful, users_marked_review_as_funny, users_marked_review_as_cool, review, review_date
FROM
    tempreviews
WHERE
    user_id IN (SELECT user_id FROM Users);


CREATE INDEX idx_reviews_reviewid ON reviews (review_id);

DROP TABLE tempreviews;

------------------------------------- QUERIES ------------------------------------
1.
select count(user_id) as users_in_year,EXTRACT(YEAR FROM user_joined) as year from users
where user_joined > '2010-01-01'
group by year
order by year;

2.
select year,count(user_id) as no_of_eliteusers from user_eliteyears
where year between '2012' and '2021'
group by year
order by year;

3.
with most_5star as 
(select user_id,count(user_rating) as no_of_5_rated from reviews
where user_rating =5.0
group by user_id
order by no_of_5_rated desc
limit 5)

select name,no_of_5_rated,user_joined,fans,funny_votes,useful_votes,cool_votes 
from most_5star as m 
left join users as u
on m.user_id=u.user_id
order by no_of_5_rated desc;

4.
----------data insufficient----------------

5.
select state, count(business_id) as no_of_businesses
from businesses
group by state
order by no_of_businesses desc
limit 11;

6.
select category_name,count(business_id) as no_of_business 
from business_categories
group by category_name
order by no_of_business desc
limit 10;

7.
with major_cat as (
	select category_name,count(business_id) as no_of_business
from business_categories
group by category_name
order by no_of_business desc
limit 10)

select bc.category_name,avg(b.average_reviews) as average
from business_categories as bc
left join businesses as b 
on bc.business_id=b.business_id
where bc.category_name in (select category_name from major_cat)
group by category_name
order by average desc;

8.
--------------leastfunny------------
with restaurants as 
(select business_id from business_categories
where category_name='Restaurants')

select review,users_marked_review_as_funny
from reviews
where business_id in (select business_id from restaurants)
order by users_marked_review_as_funny
limit 20;

---------------mostfunny-------------
with restaurants as 
(select business_id from business_categories
where category_name='Restaurants')

select review,users_marked_review_as_funny
from reviews
where business_id in (select business_id from restaurants)
order by users_marked_review_as_funny desc
limit 20;

9.
with top_100 as 
(select char_length(tip) as tip_length,compliments_for_tip from tips
order by compliments_for_tip desc
limit 100),
last_100 as
(select char_length(tip) as tip_length,compliments_for_tip from tips
order by compliments_for_tip
limit 100)

select 'Top 100 tips' as tip_type, avg(tip_length) as average_length_of_tips
from top_100
union all 
select 'Bottom 100 tips' as tip_type, avg(tip_length) as average_length_of_tips
from last_100;

10.
WITH mostreviewed AS (
	SELECT business_id, business_name, no_of_reviews
	FROM businesses
	ORDER BY no_of_reviews DESC
	LIMIT 10
)
SELECT mr.business_id, mr.business_name, bh.day, bh.closing_time, bh.opening_time
FROM mostreviewed AS mr
LEFT JOIN business_hours AS bh ON mr.business_id = bh.business_id
WHERE mr.business_id IN (SELECT business_id FROM mostreviewed)
ORDER BY mr.business_id