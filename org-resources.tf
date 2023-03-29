
# https://registry.terraform.io/providers/grafana/grafana/latest/docs#org_id

resource "grafana_folder" "my_folder" {
  provider = grafana.my_org

  title = "Test Folder"
}