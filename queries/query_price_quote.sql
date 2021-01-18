insert into br_boavista_target.tbl_price_quote
select
CASE tube_assembly_id WHEN 'NA' then null ELSE tube_assembly_id END tube_assembly_id, 
CASE supplier WHEN 'NA' then null ELSE supplier END supplier, 
CAST(quote_date as DATE),
CAST(CASE annual_usage WHEN 'NA' then null ELSE annual_usage END as NUMERIC) annual_usage, 
CAST(CASE min_order_quantity WHEN 'NA' then null ELSE min_order_quantity END as NUMERIC) min_order_quantity, 
CAST(CASE bracket_pricing WHEN 'NA' then null WHEN 'No' then 'False' WHEN 'Yes' then 'True' ELSE bracket_pricing END as BOOL) bracket_pricing,
CAST(CASE quantity WHEN 'NA' then null ELSE quantity END as NUMERIC) quantity, 
CAST(CASE cost WHEN 'NA' then null ELSE cost END as NUMERIC) cost,
from br_boavista_stage.csv_price_quote