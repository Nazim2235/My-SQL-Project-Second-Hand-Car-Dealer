 SELECT * FROM nazim.car_dekho;
-- The manager asked the employee How many cars will be available in 2023--
select count(*) from car_dekho where year = 2023;
-- The manager asked the employed how many cars is available in 2020,2021,2022--
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- Group By--
select count(*) from car_dekho where year in (2020,2021,2023) group by year;
-- clint asked me to print the total of all cars by year. I don't see all the details.--
select year, count(*)from car_dekho group by year;
-- clint asked to car dealer agent how many diesel cars will there be in 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel"; # 20

-- clint requested a car dealer agent how many petrol cars will there be in 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "petrol"; # 51

-- The manager told the employee to give a print all the cars (petrol, diesel, and CNG) come by all year.--

select year, count(*) from car_dekho where fuel = "petrol" group by year;

select year, count(*) from car_dekho where fuel = "Diesel" group by year;

select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there were more then 100 cars in a given year, which year had more than 100 cars?--

select year, count(*) from car_dekho group by year having count(*)>100;

select year, count(*) from car_dekho group by year having count(*)<50;

-- The manager said to the employee All cars count detail between 2015 and 2023; we need a complete list.--

select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employee All cars details between 2015 to 2023 we need complete list.--

select*from car_dekho where year between 2015 and 2023;


-- END—
