view: test_sqlrunner {
  derived_table: {
    sql: select agent_asn, remote_ip from wtrace_view.result
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: agent_asn {
    type: string
    sql: ${TABLE}.agent_asn ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}.remote_ip ;;
  }

  set: detail {
    fields: [agent_asn, remote_ip]
  }
}
