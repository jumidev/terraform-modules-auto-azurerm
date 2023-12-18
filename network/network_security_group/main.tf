data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_network_security_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "security_rule" { # var.security_rule
    for_each = var.security_rule != null ? var.security_rule : []
    content {
      name                                       = security_rule.key
      description                                = lookup(security_rule.value, "description", null)
      protocol                                   = lookup(security_rule.value, "protocol", "*") # (Required) possible values: Tcp | Udp | Icmp | Esp | Ah | *
      source_port_range                          = lookup(security_rule.value, "source_port_range", "*")
      destination_port_range                     = lookup(security_rule.value, "destination_port_range", null)
      source_address_prefix                      = lookup(security_rule.value, "source_address_prefix", "*")
      source_application_security_group_ids      = lookup(security_rule.value, "source_application_security_group_ids", null)
      destination_address_prefix                 = lookup(security_rule.value, "destination_address_prefix", null)
      destination_application_security_group_ids = lookup(security_rule.value, "destination_application_security_group_ids", null)
      access                                     = lookup(security_rule.value, "access", "Allow")      # (Required) possible values: Allow | Deny
      priority                                   = lookup(security_rule.value, "priority")             # (Required) 
      direction                                  = lookup(security_rule.value, "direction", "Inbound") # (Required) possible values: Inbound | Outbound
    }
  }

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
