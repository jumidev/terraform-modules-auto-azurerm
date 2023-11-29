data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_container_registry_webhook" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  registry_name       = var.registry_name
  location            = var.location
  service_uri         = var.service_uri
  actions             = var.actions

  ########################################
  # optional vars
  ########################################
  status         = var.status # Default: enabled
  scope          = var.scope  # Default: 
  custom_headers = var.custom_headers
  tags           = var.tags
}
