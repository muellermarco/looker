
#
# This LookML file was generated by AtScale on 2023-06-13T12:52:22.736154Z
#
# AtScale engine version: 2023.1.0.12023
# AtScale DesignCenter version: 2023.1.0.20651
# AtScale version: 2023.1.0.5837
# Organization: default
# Project: CustomerSubscription

connection: "atscalemm"
label: "CustomerSubscription"


include: "/views/CustomerSubscription/CustomerSubscriptionCube.view.lkml"


explore: CustomerSubscriptionCube {
  label: "CustomerSubscriptionCube"
}
