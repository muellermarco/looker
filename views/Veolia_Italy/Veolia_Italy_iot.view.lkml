view: Veolia_Italy_iot {
    label: "Veolia Italy iot"
    sql_table_name: "Veolia Italy"."Veolia Italy iot";;
    dimension: Building_Hierarchy_Building1 {
        label: "Building"
        type: string
        sql: ${TABLE}."Building1";;
    }

    dimension: Hour_Hierarchy_Hour_Level {
        label: "Hour Level"
        type: number
        sql: ${TABLE}."Hour Level";;
    }

    dimension: Measure_Timestamp_Hierarchy_Measure_Timestamp_Level {
        label: "Measure_Timestamp Level"
        type: date_time
        sql: ${TABLE}."Measure_Timestamp Level";;
    }

    dimension: d_Week {
        label: "Week"
        type: number
        sql: ${TABLE}."d_Week";;
    }

    dimension: d_YearName {
        label: "Year"
        type: number
        sql: ${TABLE}."d_YearName";;
    }

    dimension: d_sensor_id {
        label: "Sensor ID"
        type: string
        sql: ${TABLE}."d_sensor_id";;
    }

    dimension: Date_Hierarchy_Date_ID {
        label: " Date"
        group_label: "Date Hierarchy"
        type: date
        sql: ${TABLE}."Date ID";;
    }

    dimension: Date_Hierarchy_Week {
        label: "  Week"
        group_label: "Date Hierarchy"
        type: number
        sql: ${TABLE}."Week";;
        drill_fields: [Date_Hierarchy_Date_ID]
    }

    dimension: Date_Hierarchy_Year11 {
        label: "   Year"
        group_label: "Date Hierarchy"
        type: number
        sql: ${TABLE}."Year11";;
        drill_fields: [Date_Hierarchy_Week]
    }

    dimension: Sensor_Hierarchy_Sensor_ID {
        label: " Sensor"
        group_label: "Sensor Hierarchy"
        type: string
        sql: ${TABLE}."Sensor ID";;
    }

    dimension: Sensor_Hierarchy_Utility_Type {
        label: "  Utility Type"
        group_label: "Sensor Hierarchy"
        type: string
        sql: ${TABLE}."Utility Type";;
        drill_fields: [Sensor_Hierarchy_Sensor_ID]
    }


    measure: Calculated_Measure {
        label: "Calculated Measure"
        type: average
        sql: ${TABLE}."Calculated Measure";;
    }

    measure: m_measure_timestamp_max {
        label: "Date max"
        type: max
        sql: ${TABLE}."m_measure_timestamp_max";;
    }

    measure: m_measure_timestamp_min {
        label: "Date min"
        type: max
        sql: ${TABLE}."m_measure_timestamp_min";;
    }

    measure: m_measure_value_avg {
        label: "Value Avg"
        type: average
        sql: ${TABLE}."m_measure_value_avg";;
    }

    measure: m_measure_value_sum {
        label: "Value Sum"
        type: sum
        sql: ${TABLE}."m_measure_value_sum";;
    }

}
