data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_relay_hybrid_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  resource_group_name  = data.azurerm_resource_group.this.name
  relay_namespace_name = var.relay_namespace_name

  ########################################
  # optional vars
  ########################################
  requires_client_authorization = var.requires_client_authorization # Default: True
  user_metadata                 = var.user_metadata
}
