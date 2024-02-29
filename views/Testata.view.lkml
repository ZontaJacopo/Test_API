view: testata {
  sql_table_name: `clz-tmp-quantyca.l2_fal.fal_dom_test` ;;

  dimension: Scontrino {
    type: string
    primary_key: yes
    sql: ${TABLE}.nuid ;;

  }

  dimension: Store {
    type: string
    sql: ${TABLE}.nodo_cod ;;
  }

  dimension_group: data {
    type: time
    datatype: datetime
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: date(${TABLE}.data);;
    convert_tz: no
  }

  dimension: Prezzo {
    type: string
    sql: ${TABLE}.valore_scontrino ;;
  }

  parameter: test {
    type: number

  }

  measure: Scontrino_2 {
    type: sum
    sql: ${Prezzo};;
    #filters: [Store = ]
  }





}
