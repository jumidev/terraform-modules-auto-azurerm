

resource "azurerm_network_security_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  security_rule {
    name                                       = lookup(security_rule.value, "name") # (Required) 
    description                                = lookup(security_rule.value, "description", null)
    protocol                                   = lookup(security_rule.value, "protocol") # (Required) 
    source_port_range                          = lookup(security_rule.value, "source_port_range", "*")
    destination_port_range                     = lookup(security_rule.value, "destination_port_range", null)
    source_address_prefix                      = lookup(security_rule.value, "source_address_prefix", "*")
    source_application_security_group_ids      = lookup(security_rule.value, "source_application_security_group_ids", null)
    destination_address_prefix                 = lookup(security_rule.value, "destination_address_prefix", null)
    destination_application_security_group_ids = lookup(security_rule.value, "destination_application_security_group_ids", null)
    access                                     = lookup(security_rule.value, "access")    # (Required) 
    priority                                   = lookup(security_rule.value, "priority")  # (Required) 
    direction                                  = lookup(security_rule.value, "direction") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  tags = var.tags
}

##############################################################################################
# optional azurerm_subnet_network_security_group_association 
##############################################################################################
resource "azurerm_subnet_network_security_group_association" "this" {
  count                     = var.subnet_id != null ? 1 : 0
  network_security_group_id = azurerm_network_security_group.this.id
  subnet_id                 = var.subnet_id
}

##############################################################################################
# optional azurerm_network_interface_security_group_association 
##############################################################################################
resource "azurerm_network_interface_security_group_association" "this" {
  count                     = var.network_interface_id != null ? 1 : 0
  network_interface_id      = var.network_interface_id
  network_security_group_id = azurerm_network_security_group.this.id
}
