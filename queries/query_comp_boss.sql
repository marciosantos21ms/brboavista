insert into br_boavista_target.tbl_comp_boss
select
  CASE component_id WHEN 'NA' then null ELSE component_id END component_id, 
  CASE component_type_id WHEN 'NA' then null ELSE component_type_id END component_type_id, 
  CASE type WHEN 'NA' then null ELSE type END type, 
  CASE connection_type_id WHEN 'NA' then null ELSE connection_type_id END connection_type_id, 
  CASE outside_shape WHEN 'NA' then null ELSE outside_shape END outside_shape, 
  CASE base_type WHEN 'NA' then null ELSE base_type END base_type, 
  CAST(CASE height_over_tube WHEN 'NA' then null ELSE height_over_tube END as NUMERIC) height_over_tube, 
  CAST(CASE bolt_pattern_long WHEN 'NA' then null ELSE bolt_pattern_long END as NUMERIC) bolt_pattern_long,  
  CAST(CASE bolt_pattern_wide WHEN 'NA' then null ELSE bolt_pattern_wide END as NUMERIC) bolt_pattern_wide, 
  CAST(CASE groove WHEN 'NA' then null WHEN 'No' then 'False' WHEN 'Yes' then 'True' ELSE groove END as BOOL) groove, 
  CAST(CASE base_diameter WHEN 'NA' then null ELSE base_diameter END as NUMERIC) base_diameter, 
  CAST(CASE shoulder_diameter WHEN 'NA' then null ELSE shoulder_diameter END as NUMERIC) shoulder_diameter, 
  CAST(CASE unique_feature WHEN 'NA' then null WHEN 'No' then 'False' WHEN 'Yes' then 'True' ELSE unique_feature END as BOOL) unique_feature, 
  CAST(CASE orientation WHEN 'NA' then null WHEN 'No' then 'False' WHEN 'Yes' then 'True' ELSE orientation END as BOOL) orientation, 
  CAST(CASE weight WHEN 'NA' then null ELSE weight END as NUMERIC) weight 
from br_boavista_stage.csv_comp_boss;