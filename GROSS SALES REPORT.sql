# AS A PRODUCT OWNER I NEED AN AGGREGATE MONTHLY GROSS SALES  REPORT FOR CROMA INDIA 
-- CUSTOMER SO THAT I CAN TRACK HOW MUCH SALES 
--  THIS PARTICULAR CUSTOMER IS GENREATING FOR ATLIQ AND MANAGE OUR RELATIONSHIPS ACCORDINGDLY.

# THE REPORT SHOULD HAVE THE FOLLOWING FIELS

-- MONTH
-- TOTAL GROSS SALES AMOUNT TO CROMA INDIA IN THIS MONTH.
SET SESSION sql_mode = '';

SELECT s.date,round(sum(g.gross_price * S.sold_quantity),2) as gross_price_total FROM fact_sales_monthly S
JOIN fact_gross_price G ON S.product_code=G.product_code
AND G.fiscal_year=get_fiscal_year(s.date)

WHERE customer_code=90002002
group by s.date
order by s.date asc;


