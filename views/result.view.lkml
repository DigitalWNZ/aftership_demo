view: result {
  sql_table_name: `wtrace_view.result`
    ;;

  dimension: agent_asn {
    type: string
    sql: ${TABLE}.agent_asn ;;
  }

  dimension: agent_ip {
    type: string
    sql: ${TABLE}.agent_ip ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
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

  dimension: dest_url {
    type: string
    sql: ${TABLE}.dest_url ;;
  }

  dimension: dns_latency_us {
    type: number
    sql: ${TABLE}.dns_latency_us ;;
  }

  dimension: gcp_pop {
    type: string
    sql: ${TABLE}.gcp_pop ;;
  }

  dimension: http_latency_us {
    type: number
    sql: ${TABLE}.http_latency_us ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.isp ;;
  }

  dimension: metro {
    type: string
    sql: ${TABLE}.metro ;;
  }

  dimension: ping_avg_latency_ms {
    type: number
    sql: ${TABLE}.ping_avg_latency_ms ;;
  }

  dimension: ping_max_latency_ms {
    type: number
    sql: ${TABLE}.ping_max_latency_ms ;;
  }

  dimension: ping_min_latency_ms {
    type: number
    sql: ${TABLE}.ping_min_latency_ms ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}.remote_ip ;;
  }

  dimension: remote_ip_info {
    type: string
    sql: ${TABLE}.remote_ip_info ;;
  }

  dimension: response_code {
    type: number
    sql: ${TABLE}.response_code ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.run_id ;;
  }

  dimension: tcp_latency_us {
    type: number
    sql: ${TABLE}.tcp_latency_us ;;
  }

  measure: tcp_latency_us_p95 {
    type: percentile
    percentile: 95
    sql: ${http_latency_us} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
