{{ config(materialized = 'table') }}

select c.src_xml: "@Text" as Text
from "ELT_ASSIGNMENT"."ASSIGNMENT1"."USER_XML" u, "ELT_ASSIGNMENT"."ASSIGNMENT1"."COMMENT_XML" c
where u.src_xml: "@Id" = c.src_xml: "@UserId" and u.src_xml: "@DisplayName" like ('%nau%')
