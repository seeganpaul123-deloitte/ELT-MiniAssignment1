{{ config(materialized = 'table') }}

select count(src_xml: "@Id") as No_of_User, src_xml: "@Name" as Name
from "ELT_ASSIGNMENT"."ASSIGNMENT1"."BADGE"
group by Name
order by No_of_User desc
limit 10
