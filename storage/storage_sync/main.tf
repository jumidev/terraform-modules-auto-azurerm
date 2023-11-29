data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_storage_sync" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  incoming_traffic_policy = var.incoming_traffic_policy # Default: AllowAllTraffic
  tags                    = var.tags
}
