select c.c_custkey,sum(o.O_totalprice) from {{ ref('cust') }} as c left join {{ ref('orders') }} as o 
on o.O_CustKey=c.c_custkey
group by c.c_custkey