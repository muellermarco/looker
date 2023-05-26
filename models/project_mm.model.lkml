connection: "atscalemm"

datagroup: project_mm_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: project_mm_default_datagroup
