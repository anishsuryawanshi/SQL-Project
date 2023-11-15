create database car_dekho;

use car_dekho;

-- Read the Data -- 
select * from cars;

-- How Many Cars in Dataset --
select count(*) from cars;

-- what is the average car price in dataset -- 
select avg(selling_price) from cars;

-- what is the highest and lowest price of cars in dataset --
select max(selling_price) as highest_price,min(selling_price) as lowest_price from cars;

-- show cars manufactured after year 2018 -- 
select * from cars 
where year>2018;

-- Display car price between 250000 and 1000000 from the dataset --
select * from cars
where selling_price between 250000 and 1000000;

-- How many cars manufactured in each year -- 
select year,count(*) from cars
group by year;

-- find the average price for each make of cars -- 
select Name,avg(selling_price) from cars
group by Name;

-- which model and make is most expensive -- 
select Name,selling_price from cars
where selling_price=(select max(selling_price) from cars);

-- which model and make is cheapest price -- 
select Name,selling_price from cars
where selling_price=(select min(selling_price) from cars);

-- List the model and make with alphabetical order -- 
select * from cars
order by Name asc;

-- update the price of Lexus ES 300h to 60,00,000 -- 
update cars
set selling_price=600000
where Name='Lexus ES 300h';

-- insert a new car name as BMW 3 Series (2022) at price 55,00,000 -- 
insert into cars
values('BMW 3 Series',2022,5500000,13500,'Petrol','Dealer','Automactic','First Owner',13.75,'2999 cc','314.48 bhp','403 nm',5);

-- delete the chevrolet cruze from the dataset -- 
delete from cars
where Name='Chevrolet Cruze';

-- show cars of specific make (e.g BMW) -- 
select * from cars
where Name='BMW';

-- find the cars whose price are greatar than 500000 -- 
select Name from cars 
where selling_price>=500000;

-- display the cars who manufactured before 2015 -- 
select * from cars
where year<2015;

-- How many cars does have each make -- 
select Name,count(Name) from cars
group by Name;

-- find the cars with a make starting letter is 'H' -- 
select * from cars where Name like 'H%';

-- show cars in descending order of price -- 
select * from cars
order by selling_price desc;

-- display cars with the rounded to the nearest 500000 -- 
select Name,round(selling_price,-5) as Rounded_price 
from cars;

-- list the ordered by year in asecending form -- 
select * from cars
order by year asc;

-- show car price with USD and EUR (assuming an exchange rate of 1 USD=0.85 EUR) -- 
select Name,selling_price,selling_price*0.85 as Price_in_EUR from cars ;

-- show car price with respect to car price in canadian dollar (assuming 1 CAD=0.61 CAD)
select Name,selling_price as indian_selling_price, selling_price*0.61 as Price_in_canada from cars;

-- display the cars group by name and order by the count in descending order -- 
select Name from cars
group by Name
order by count(Name) desc;

-- What is the average price of manufactured in 2017 -- 
select avg(selling_price) from cars
where year=2017;

-- List the cars whose name ends with s -- 
select Name from cars
where Name like '%s';

-- list the cars name whose contain a and s in their name -- 
select Name from cars 
where Name like '%as%';

-- display the cars name whose name contain z in their name --
select Name from cars
where Name like '%z%';

-- find the total number of cars for each make before 2017 -- 
select Name,count(Name) from cars
where year<2017
group by Name;

-- list cars with a make containing more than one word --
select Name from cars where Name like '%%';

-- display the cars make and their price which is odd number -- 
select Name,selling_price from cars
where selling_price %2!=0;

-- display the cars make and their price which is even number -- 
select Name,selling_price from cars
where selling_price %2=0;

-- find the cars model that have three or more characters -- 
select * from cars 
where length(Name)>=3;

-- display car whose not contain s in their name -- 
select * from cars
where Name not like '%s%';

-- display the heighest price of car -- 
select * from cars
where selling_price=(select max(selling_price) from cars);

-- display the second highest car -- 
SELECT MAX(selling_price) AS second_highest_price
FROM cars
WHERE selling_price < (SELECT MAX(selling_price) FROM cars);

-- display the fifth highest car price -- 
SELECT DISTINCT selling_price
FROM cars
ORDER BY selling_price DESC
LIMIT 1 OFFSET 5;

--------------------------------------------------------------------------------------------------------------------------
