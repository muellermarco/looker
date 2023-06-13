view: CustomerSubscriptionCube {
    label: "CustomerSubscriptionCube"
    sql_table_name: "CustomerSubscription"."CustomerSubscriptionCube";;
    dimension: Age {
        label: "Age"
        type: number
        sql: ${TABLE}.`Age`;;
    }

    dimension: Channel_Hierarchy_Channel {
        label: "Channel"
        type: string
        sql: ${TABLE}.`Channel`;;
    }

    dimension: Reason_Hierarchy_Reason {
        label: "Reason"
        type: string
        sql: ${TABLE}.`Reason`;;
    }

    dimension: Date_Month_Hierarchy_CANCEL_Date {
        label: " CANCEL Date"
        group_label: "CANCEL Date Month Hierarchy"
        type: date
        sql: ${TABLE}.`CANCEL Date`;;
    }

    dimension: Date_Month_Hierarchy_CANCEL_Month {
        label: "  CANCEL Month"
        group_label: "CANCEL Date Month Hierarchy"
        type: date_month
        sql: ${TABLE}.`CANCEL Month`;;
        drill_fields: [Date_Month_Hierarchy_CANCEL_Date]
    }

    dimension: Date_Month_Hierarchy_CANCEL_Year {
        label: "   CANCEL Year"
        group_label: "CANCEL Date Month Hierarchy"
        type: date_year
        sql: ${TABLE}.`CANCEL Year`;;
        drill_fields: [Date_Month_Hierarchy_CANCEL_Month]
    }

    dimension: Date_Month_Hierarchy_CASE_Date {
        label: " CASE Date"
        group_label: "CASE Date Month Hierarchy"
        type: date
        sql: ${TABLE}.`CASE Date`;;
    }

    dimension: Date_Month_Hierarchy_CASE_Month {
        label: "  CASE Month"
        group_label: "CASE Date Month Hierarchy"
        type: date_month
        sql: ${TABLE}.`CASE Month`;;
        drill_fields: [Date_Month_Hierarchy_CASE_Date]
    }

    dimension: Date_Month_Hierarchy_CASE_Year {
        label: "   CASE Year"
        group_label: "CASE Date Month Hierarchy"
        type: date_year
        sql: ${TABLE}.`CASE Year`;;
        drill_fields: [Date_Month_Hierarchy_CASE_Month]
    }

    dimension: Customer_Hierarchy_Customer_Id {
        label: " Customer ID"
        group_label: "Customer Hierarchy"
        type: string
        sql: ${TABLE}.`Customer_Id`;;
    }

    dimension: Customer_Hierarchy_Gender {
        label: "  Gender"
        group_label: "Customer Hierarchy"
        type: string
        sql: ${TABLE}.`Gender`;;
        drill_fields: [Customer_Hierarchy_Customer_Id]
    }

    dimension: Date_Month_Hierarchy_Date {
        label: " Date"
        group_label: "Date Month Hierarchy"
        type: date
        sql: ${TABLE}.`Date`;;
    }

    dimension: Date_Month_Hierarchy_Month {
        label: "  Month"
        group_label: "Date Month Hierarchy"
        type: date_month
        sql: ${TABLE}.`Month`;;
        drill_fields: [Date_Month_Hierarchy_Date]
    }

    dimension: Date_Month_Hierarchy_Year {
        label: "   Year"
        group_label: "Date Month Hierarchy"
        type: date_year
        sql: ${TABLE}.`Year`;;
        drill_fields: [Date_Month_Hierarchy_Month]
    }

    dimension: Product_Hierarchy_Billing_Cycle {
        label: "  Billing Cycle"
        group_label: "Product Hierarchy"
        type: number
        sql: ${TABLE}.`Billing_Cycle`;;
        drill_fields: [Product_Hierarchy_Product_Name]
    }

    dimension: Product_Hierarchy_Product_Name {
        label: " Product Name"
        group_label: "Product Hierarchy"
        type: string
        sql: ${TABLE}.`Product_Name`;;
    }

    dimension: Date_Month_Hierarchy_SIGNUP_Date {
        label: " SIGNUP Date"
        group_label: "SIGNUP Date Month Hierarchy"
        type: date
        sql: ${TABLE}.`SIGNUP Date`;;
    }

    dimension: Date_Month_Hierarchy_SIGNUP_Month {
        label: "  SIGNUP Month"
        group_label: "SIGNUP Date Month Hierarchy"
        type: date_month
        sql: ${TABLE}.`SIGNUP Month`;;
        drill_fields: [Date_Month_Hierarchy_SIGNUP_Date]
    }

    dimension: Date_Month_Hierarchy_SIGNUP_Year {
        label: "   SIGNUP Year"
        group_label: "SIGNUP Date Month Hierarchy"
        type: date_year
        sql: ${TABLE}.`SIGNUP Year`;;
        drill_fields: [Date_Month_Hierarchy_SIGNUP_Month]
    }


    measure: CasesDc {
        label: "Cases DC"
        type: count_distinct
        sql: ${TABLE}.`CasesDc`;;
    }

    measure: ChurnSum {
        label: "Churn SUM"
        type: sum
        sql: ${TABLE}.`ChurnSum`;;
    }

    measure: DurationAvg {
        label: "Duration AVG"
        type: average
        sql: ${TABLE}.`DurationAvg`;;
    }

    measure: Product1Ndc {
        label: "Product 1 NDC"
        type: sum
        sql: ${TABLE}.`Product1Ndc`;;
    }

    measure: product2Ndc {
        label: "Product 2 NDC"
        type: sum
        sql: ${TABLE}.`product2Ndc`;;
    }

    measure: ProductTotalNdc {
        label: "Product Total NDC"
        type: count_distinct
        sql: ${TABLE}.`ProductTotalNdc`;;
    }

}
