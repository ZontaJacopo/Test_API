connection: "clz-quantyca"
include: "/views/*.view.lkml"

explore: Sales {
  from: testata
  sql_always_having: ${Scontrino_2}>{%  parameter test %};;
}
