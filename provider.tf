# https://grafana.com/docs/grafana/latest/http_api/auth/

# some reference (without two providers)
# https://www.youtube.com/watch?v=ht18nXq4HMo

terraform {
  required_providers {
    grafana = {
      source = "grafana/grafana"
    }
  }
}

// Step 1: Basic provider that allow create an organization
provider "grafana" {
  alias = "base"
  url   = "http://grafana.local:3000"
  auth  = var.grafana_auth
}

// Step 2: Auxiliary provider that allow create resources within the organization
provider "grafana" {
  alias  = "my_org"
  url    = "http://grafana.local:3000"
  auth   = var.grafana_auth
  org_id = grafana_organization.test_org.org_id
}

