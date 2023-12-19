

resource "azurerm_log_analytics_workspace_table" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  workspace_id      = var.workspace_id
  retention_in_days = var.retention_in_days
}
