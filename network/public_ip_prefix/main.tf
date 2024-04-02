

resource "azurerm_public_ip_prefix" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  sku           = var.sku           # Default: Standard
  ip_version    = var.ip_version    # Default: IPv4
  prefix_length = var.prefix_length # Default: 28
  tags          = var.tags
  zones         = var.zones
}

##############################################################################################
# optional azurerm_nat_gateway_public_ip_prefix_association 
##############################################################################################
resource "azurerm_nat_gateway_public_ip_prefix_association" "this" {
  count               = var.nat_gateway_id != null ? 1 : 0
  nat_gateway_id      = var.nat_gateway_id
  public_ip_prefix_id = azurerm_public_ip_prefix.this.id
}
