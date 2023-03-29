# 
resource "grafana_dashboard" "service-x" {
  folder = 0 // General folder
  # direct way to define a dashboard instead of a file
  # config_json = jsonencode({
  #   id            = 23456
  #   title         = "test_data_source_dashboard X"
  #   tags          = ["test"]
  #   timezone      = "browser"
  #   schemaVersion = 16
  # })

  # file way to define a dashboard instead of a direct config_json
  config_json = file("./service-x-dashboard.json")
}



