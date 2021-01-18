insert into br_boavista_target.tbl_bill_of_materials
select
  tube_assembly_id, 
  CASE component_id_1 WHEN 'NA' then null ELSE component_id_1 END component_id_1, 
  CAST(CASE quantity_1 WHEN 'NA' then null ELSE quantity_1 END as NUMERIC) quantity_1, 
  CASE component_id_2 WHEN 'NA' then null ELSE component_id_2 END component_id_2, 
  CAST(CASE quantity_2 WHEN 'NA' then null ELSE quantity_2 END as NUMERIC) quantity_2, 
  CASE component_id_3 WHEN 'NA' then null ELSE component_id_3 END component_id_3, 
  CAST(CASE quantity_3 WHEN 'NA' then null ELSE quantity_3 END as NUMERIC) quantity_3, 
  CASE component_id_4 WHEN 'NA' then null ELSE component_id_4 END component_id_4, 
  CAST(CASE quantity_4 WHEN 'NA' then null ELSE quantity_4 END as NUMERIC) quantity_4, 
  CASE component_id_5 WHEN 'NA' then null ELSE component_id_5 END component_id_5, 
  CAST(CASE quantity_5 WHEN 'NA' then null ELSE quantity_5 END as NUMERIC) quantity_5, 
  CASE component_id_6 WHEN 'NA' then null ELSE component_id_6 END component_id_6, 
  CAST(CASE quantity_6 WHEN 'NA' then null ELSE quantity_6 END as NUMERIC) quantity_6, 
  CASE component_id_7 WHEN 'NA' then null ELSE component_id_7 END component_id_7, 
  CAST(CASE quantity_7 WHEN 'NA' then null ELSE quantity_7 END as NUMERIC) quantity_7, 
  CASE component_id_8 WHEN 'NA' then null ELSE component_id_8 END component_id_8, 
  CAST(CASE quantity_8 WHEN 'NA' then null ELSE quantity_8 END as NUMERIC) quantity_8
from 
  br_boavista_stage.csv_bill_of_materials;