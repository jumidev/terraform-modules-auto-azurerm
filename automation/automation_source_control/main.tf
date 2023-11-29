

resource "azurerm_automation_source_control" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  automation_account_id = var.automation_account_id
  folder_path           = var.folder_path
  repository_url        = var.repository_url

  security {
    token         = lookup(security.value, "token")      # (Required) 
    token_type    = lookup(security.value, "token_type") # (Required) 
    refresh_token = lookup(security.value, "refresh_token", null)
  }

  source_control_type = var.source_control_type

  ########################################
  # optional vars
  ########################################
  automatic_sync          = var.automatic_sync
  branch                  = var.branch
  description             = var.description
  publish_runbook_enabled = var.publish_runbook_enabled # Default: True
}
