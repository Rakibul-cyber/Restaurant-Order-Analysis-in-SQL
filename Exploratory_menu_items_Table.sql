use restaurant_db;

-- 1. View the menu_items table.
 
select * from menu_items;

-- 2. Find the number of items on the menu.
select COUNT(*) from menu_items;

-- 3. What are the least and most expensive items on the menu?
select *
FROM menu_items
order by price;

select *
from menu_items
order by price DESC;

-- 4. How many Italian dishes are on the menu?
select count(*) FROM menu_items
Where category = 'Italian';
-- 5. What are the least and most expensive Italian dishes on the menu ?
select*
from menu_items
where category = 'Italian'
order by price;

select*
from menu_items
where category = 'Italian'
order by price desc;

-- 6. How many dishes are in each category ??

select category, count(menu_item_id) As num_dishes
FROM menu_items
group by category;

-- 7. What is the avarage dish price withing each category ?
select category, avg(price) As avg_dishes
FROM menu_items
group by category;
