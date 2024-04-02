

resource "azurerm_storage_sync" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  incoming_traffic_policy = var.incoming_traffic_policy # Default: AllowAllTraffic
  tags                    = var.tags
}
