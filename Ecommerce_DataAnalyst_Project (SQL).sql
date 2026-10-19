create database ecommerce;
use ecommerce;
show tables;
select * from ecommerce_data;

# Total Orders
select count(order_id) as "No. of orders" from ecommerce_data;

# Total Sales
select round(sum(Net_Amount),2) from ecommerce_data;

# Top Product
select product, sum(qty) as Top_Product_by_Quantity from ecommerce_data group by product order by Top_Product_by_Quantity desc;
										# OR
select product, round(sum(net_amount),2) as Top_Product_by_sales from ecommerce_data group by product order by Top_Product_by_sales desc;

# Top Cities
select City, round(sum(net_amount),2) as Top_Cities_by_sales from ecommerce_data group by City order by Top_Cities_by_sales desc;

# Monthly_Sales
select order_month, round(sum(net_amount),2) as Monthly_Sales from ecommerce_data group by order_month order by Monthly_sales desc;

# Highest Profit Products
select product, round(sum(profit),2) as Highest_profit_products from ecommerce_data group by product order by Highest_profit_products desc;

# Payment Mode distribution
select payment_mode, count(*) as Payment_Mode_Distribution from ecommerce_data group by payment_mode order by payment_Mode_Distribution desc;

# Cancelled Orders
select count(*) as Cancelled_orders from ecommerce_data where order_status="cancelled";