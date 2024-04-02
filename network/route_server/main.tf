

resource "azurerm_route_server" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  resource_group_name  = var.resource_group_name
  location             = var.location
  subnet_id            = var.subnet_id
  sku                  = var.sku
  public_ip_address_id = var.public_ip_address_id

  ########################################
  # optional vars
  ########################################
  branch_to_branch_traffic_enabled = var.branch_to_branch_traffic_enabled
  tags                             = var.tags
}
