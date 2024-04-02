

resource "azurerm_application_security_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}

##############################################################################################
# optional azurerm_network_interface_application_security_group_association 
##############################################################################################
resource "azurerm_network_interface_application_security_group_association" "this" {
  count                         = var.network_interface_id != null ? 1 : 0
  network_interface_id          = var.network_interface_id
  application_security_group_id = azurerm_application_security_group.this.id
}

##############################################################################################
# optional azurerm_private_endpoint_application_security_group_association 
##############################################################################################
resource "azurerm_private_endpoint_application_security_group_association" "this" {
  count                         = var.private_endpoint_id != null ? 1 : 0
  application_security_group_id = azurerm_application_security_group.this.id
  private_endpoint_id           = var.private_endpoint_id
}
