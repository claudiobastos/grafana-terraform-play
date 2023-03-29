# grafana resources
# https://registry.terraform.io/providers/grafana/grafana/latest/docs

# https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/data_source
resource "grafana_data_source" "prometheus" {
  type = "prometheus"
  name = "test_prometheus"
  url  = "http://prometheus:9100/"
  # username      = "foo"
  # password      = "bar"
  # database_name = "mydb"
}

# https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/data_source
resource "grafana_data_source" "influxdb" {
  type          = "influxdb"
  name          = "test_influxdb"
  url           = "http://influxdb.example.net:8086/"
  username      = "foo"
  password      = "bar"
  database_name = "mydb"
}

# https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/alert_notification
resource "grafana_alert_notification" "slack" {
  name = "Test My Slack"
  type = "slack"

  settings = {
    url         = "https://hooks.slack.com/hoook"
    recipient   = "@someguy"
    uploadImage = "false"
  }
}

# https://registry.terraform.io/providers/grafana/grafana/latest/docs/data-sources/organization
resource "grafana_organization" "test_org" {
  provider     = grafana.base
  name         = "Test Grafana Organization"
  admin_user   = "admin"
  create_users = true
  admins = [
    "admin@example.com",
  ]
  editors = [
    "editor-01@example.com",
    "editor-02@example.com",
  ]
  viewers = [
    "viewer-01@example.com",
    "viewer-02@example.com",
  ]
}

# https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/team
resource "grafana_team" "team1" {
  name  = "Test Grafana Team 1"
  email = "GrafanaTeam1@example.com"
  members = [
    "viewer-01@example.com",
  ]
}
