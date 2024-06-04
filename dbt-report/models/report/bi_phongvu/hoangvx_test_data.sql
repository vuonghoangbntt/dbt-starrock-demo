select oc.order_id, oc.order_code, oc.delivered_date, oc.delivering_date, s.name as shop_name, s.address as shop_address
from {{ source("vnshop_datawarehouse", "fact_order_completed_v2") }} as oc
left join {{ source("vnshop_datawarehouse", "dim_shop_v2") }} as s
on oc.shop_id = s.id
where oc.order_status = 'delivered'
