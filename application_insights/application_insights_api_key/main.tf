

resource "azurerm_application_insights_api_key" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  application_insights_id = var.application_insights_id

  ########################################
  # optional vars
  ########################################
  read_permissions  = var.read_permissions
  write_permissions = var.write_permissions
}
