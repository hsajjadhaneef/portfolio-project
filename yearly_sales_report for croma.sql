# Generate a yearly report for Croma India where there are two columns

--	1. Fiscal Year
--	2. Total Gross Sales amount In that year from Croma



SELECT get_fiscal_year(s.date) as fiscal_year,round(sum(g.gross_price * S.sold_quantity),2)
 as gross_price_total FROM fact_sales_monthly S
JOIN fact_gross_price G ON S.product_code=G.product_code
AND G.fiscal_year=get_fiscal_year(s.date)

WHERE customer_code=90002002
group by fiscal_year
order by fiscal_year asc;


