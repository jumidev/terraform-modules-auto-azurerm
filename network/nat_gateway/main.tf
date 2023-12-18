data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_nat_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  idle_timeout_in_minutes = var.idle_timeout_in_minutes # Default: 4
  sku_name                = var.sku_name                # Default: Standard
  tags                    = var.tags
  zones                   = var.zones
}

##############################################################################################
# optional azurerm_nat_gateway_public_ip_association 
##############################################################################################
resource "azurerm_nat_gateway_public_ip_association" "this" {
  count                = var.public_ip_address_id != null ? 1 : 0
  nat_gateway_id       = azurerm_nat_gateway.this.id
  public_ip_address_id = var.public_ip_address_id
}

##############################################################################################
# optional azurerm_subnet_nat_gateway_association 
##############################################################################################
resource "azurerm_subnet_nat_gateway_association" "this" {
  count          = var.subnet_id != null ? 1 : 0
  nat_gateway_id = azurerm_nat_gateway.this.id
  subnet_id      = var.subnet_id
}

##############################################################################################
# optional azurerm_nat_gateway_public_ip_prefix_association 
##############################################################################################
resource "azurerm_nat_gateway_public_ip_prefix_association" "this" {
  count               = var.public_ip_prefix_id != null ? 1 : 0
  nat_gateway_id      = azurerm_nat_gateway.this.id
  public_ip_prefix_id = var.public_ip_prefix_id
}
