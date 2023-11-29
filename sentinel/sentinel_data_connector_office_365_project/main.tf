

resource "azurerm_sentinel_data_connector_office_365_project" "this" {

  ########################################
  # required vars
  ########################################
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name

  ########################################
  # optional vars
  ########################################
  tenant_id = var.tenant_id
}
