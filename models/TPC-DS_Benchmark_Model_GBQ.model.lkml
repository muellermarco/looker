
#
# AtScale engine version: 2023.1.0.12023
# AtScale DesignCenter version: 2023.1.0.20651
# AtScale version: 2023.1.0.5837
# Organization: default
# Project: TPC-DS Benchmark Model GBQ

connection: "atscalemm"
label: "TPC-DS Benchmark Model GBQ"


include: "/views/TPC-DS_Benchmark_Model_GBQ/Demo_Cube_GBQ.view.lkml"


explore: Demo_Cube_GBQ {
  label: "Demo Cube GBQ"
}

