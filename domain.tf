terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">= 3.5.0"
    }
  }
  required_version = ">= 0.13"
}
provider "akamai" {
  edgerc = "~/.edgerc"
  config_section = "default"
}
resource "akamai_gtm_domain" "www_akamaiflowershop_com" {
  contract                  = var.contractid
  group                     = var.groupid
  name                      = var.domain_name
  type                      = "basic"
  comment                   = "new gtm"
  email_notification_list   = ["dgundapu@akamai.com"]
  default_timeout_penalty   = 25
  load_imbalance_percentage = 10
  default_error_penalty     = 75
  cname_coalescing_enabled  = false
  load_feedback             = false
  end_user_mapping_enabled  = false
}
