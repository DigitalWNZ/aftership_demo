connection: "aftership"

# include all the views
include: "/views/**/*.view"

datagroup: aftership_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aftership_default_datagroup

explore: result {}

explore: wtrace_view {}

explore: wtrace_view_1 {}

explore: test_sqlrunner {}
