

resource "azurerm_log_analytics_workspace_table" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  workspace_id = var.workspace_id

  ########################################
  # optional vars
  ########################################
  plan              = var.plan # Default: Analytics
  retention_in_days = var.retention_in_days
}
