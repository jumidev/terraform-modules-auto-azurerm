

resource "azurerm_container_registry_webhook" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  registry_name       = var.registry_name
  location            = var.location
  service_uri         = var.service_uri
  actions             = var.actions

  ########################################
  # optional vars
  ########################################
  status         = var.status # Default: False
  scope          = var.scope  # Default: 
  custom_headers = var.custom_headers
  tags           = var.tags
}
