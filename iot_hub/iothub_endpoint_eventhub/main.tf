data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iothub_endpoint_eventhub" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  iothub_id           = var.iothub_id

  ########################################
  # optional vars
  ########################################
  authentication_type = var.authentication_type # Default: keyBased
  identity_id         = var.identity_id
  endpoint_uri        = var.endpoint_uri
  entity_path         = var.entity_path
  connection_string   = var.connection_string
}
