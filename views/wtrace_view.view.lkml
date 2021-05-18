view: wtrace_view {
  sql_table_name: `wtrace_view.wtrace_view`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.datetime ;;
  }

  dimension: dns1 {
    type: number
    sql: ${TABLE}.dns1 ;;
  }

  dimension: dns2 {
    type: number
    sql: ${TABLE}.dns2 ;;
  }

  dimension: http1 {
    type: number
    sql: ${TABLE}.http1 ;;
  }

  dimension: http2 {
    type: number
    sql: ${TABLE}.http2 ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.isp ;;
  }

  dimension: metro {
    type: string
    sql: ${TABLE}.metro ;;
  }

  dimension: tcp1 {
    type: number
    sql: ${TABLE}.tcp1 ;;
  }

  dimension: tcp2 {
    type: number
    sql: ${TABLE}.tcp2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
