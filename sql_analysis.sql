DROP TABLE IF EXISTS public.sales_data;

CREATE TABLE public.sales_data (
    order_id VARCHAR(20),
    order_date DATE,
    customer_name VARCHAR(100),
    email VARCHAR(150),
    phone VARCHAR(30),
    city VARCHAR(100),
    state VARCHAR(100),
    product VARCHAR(100),
    category VARCHAR(100),
    qty NUMERIC,
    unit_price NUMERIC(12,2),
    discount NUMERIC(12,2),
    payment_mode VARCHAR(50),
    order_status VARCHAR(50),
    delivery_date DATE,
    sales NUMERIC(12,2),
    net_amount NUMERIC(12,2),
    profit NUMERIC(12,2),
    month VARCHAR(20),
    year INTEGER,
    week_day VARCHAR(20)
);

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'sales_data'
ORDER BY ordinal_position;

ALTER TABLE sales_data
ALTER COLUMN year TYPE NUMERIC;

select * from sales_data;

select count(*) from sales_data;

select product,sum(net_amount) as sales from sales_data group by product order by sales desc;
select month ,sum(net_amount) as sales from sales_data group by month order by sales desc;
select payment_mode ,count(payment_mode) as counts from sales_data group by payment_mode order by counts desc;