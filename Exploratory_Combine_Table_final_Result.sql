-- 1. Combine the menu_items and order_details table into a single table.
select *
From menu_items;

Select *
from order_details;

select *
from order_details od left join menu_items mi
     on od.item_id = mi.menu_item_id;
-- 2. What were the least and most ordered items? What categories were they in ?
select item_name,category,count(order_details_id) As num_purchases
From order_details od left Join menu_items mi
     on od.item_id = mi.menu_item_id
group by item_name,category
order by num_purchases desc;
-- 3. What were the top 5 orders that spent the most money ?
select order_id, sum(price) As total_spend
from order_details od left join menu_items mi
     on od.item_id = mi.menu_item_id
     group by order_id
     order by total_spend DESC
     limit 5;
-- 4. View the details of the highest spend order. What insight can you gather from the result ?
select category, Count(item_id) AS num_items
from order_details od left join menu_items mi
     on od.item_id = mi.menu_item_id
where order_id = 440
group by category;
    
-- 5.View the details of the top 5 hightest spend order. What insights can you gather from the result?
select category, Count(item_id) AS num_items
from order_details od left join menu_items mi
     on od.item_id = mi.menu_item_id
where order_id IN  (440, 2075, 1957, 330, 2675)
group by category;