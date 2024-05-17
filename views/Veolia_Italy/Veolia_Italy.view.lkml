view: Veolia_Italy {
    label: "Veolia Italy"
    sql_table_name: "Veolia Italy"."Veolia Italy";;
    dimension: Hour_Hierarchy_Hour_Level {
        label: "Hour Level"
        type: number
        sql: ${TABLE}."Hour Level";;
    }

    dimension: d_MeterCode {
        label: "Meter Code"
        type: string
        sql: ${TABLE}."d_MeterCode";;
    }

    dimension: d_MeterId {
        label: "Meter ID"
        type: number
        sql: ${TABLE}."d_MeterId";;
    }

    dimension: d_Name {
        label: "Meter Name"
        type: string
        sql: ${TABLE}."d_Name";;
    }

    dimension: Infrastructure_Hierarchy_Building {
        label: "   Building"
        group_label: "Infrastructure Hierarchy"
        type: string
        sql: ${TABLE}."Building";;
        drill_fields: [Infrastructure_Hierarchy_Contract]
    }

    dimension: Infrastructure_Hierarchy_Contract {
        label: "  Contract"
        group_label: "Infrastructure Hierarchy"
        type: string
        sql: ${TABLE}."Contract";;
        drill_fields: [Infrastructure_Hierarchy_site]
    }

    dimension: Infrastructure_Hierarchy_site {
        label: " site"
        group_label: "Infrastructure Hierarchy"
        type: string
        sql: ${TABLE}."site";;
    }

    dimension: Meter_Hierarchy_Meter {
        label: " Meter Name"
        group_label: "Meter Hierarchy"
        type: string
        sql: ${TABLE}."Meter";;
    }

    dimension: Meter_Hierarchy_Meter_Type_ID {
        label: "  Meter Type ID"
        group_label: "Meter Hierarchy"
        type: number
        sql: ${TABLE}."Meter Type ID";;
        drill_fields: [Meter_Hierarchy_Meter]
    }

    dimension: DimDate2_Hierarchy_DimDate2_Level {
        label: "  Date"
        group_label: "Month Hierarchy"
        type: date
        sql: ${TABLE}."DimDate2 Level";;
    }

    dimension: DimDate2_Hierarchy_Month1 {
        label: "   Month"
        group_label: "Month Hierarchy"
        type: string
        sql: ${TABLE}."Month1";;
        drill_fields: [DimDate2_Hierarchy_DimDate2_Level]
    }

    dimension: DimDate2_Hierarchy_Year1 {
        label: "    Year"
        group_label: "Month Hierarchy"
        type: number
        sql: ${TABLE}."Year1";;
        drill_fields: [DimDate2_Hierarchy_Month1]
    }

    dimension: Week_Hierarchy_DimDate2_Level {
        label: "  Date"
        group_label: "Week Hierarchy"
        type: date
        sql: ${TABLE}."DimDate2 Level";;
    }

    dimension: Week_Hierarchy_Week_Hierarchy_Level {
        label: "   Week"
        group_label: "Week Hierarchy"
        type: number
        sql: ${TABLE}."Week Hierarchy Level";;
        drill_fields: [Week_Hierarchy_DimDate2_Level]
    }

    dimension: Week_Hierarchy_Year1 {
        label: "    Year"
        group_label: "Week Hierarchy"
        type: number
        sql: ${TABLE}."Year1";;
        drill_fields: [Week_Hierarchy_Week_Hierarchy_Level]
    }


    measure: m_raw_avg {
        label: "AVG Value"
        value_format: "#,##0.00"
        type: average
        sql: ${TABLE}."m_raw_avg";;
    }

    measure: m_date_id_max {
        label: "Date max"
        type: max
        sql: ${TABLE}."m_date_id_max";;
    }

    measure: m_date_id_min {
        label: "Date min"
        type: max
        sql: ${TABLE}."m_date_id_min";;
    }

    measure: recording_count {
        label: "Recordings"
        value_format: "#,##0.00"
        type: sum
        sql: ${TABLE}."recording_count";;
    }

    measure: recodings_dc {
        label: "Recordings-dc"
        value_format: "#,##0.00"
        type: count_distinct
        sql: ${TABLE}."recodings_dc";;
    }

    measure: m_Raw_sum {
        label: "SUM Value"
        value_format: "#,##0.00"
        type: sum
        sql: ${TABLE}."m_Raw_sum";;
    }

    measure: Value10 {
        label: "Value10"
        type: average
        sql: ${TABLE}."Value10";;
    }

}
