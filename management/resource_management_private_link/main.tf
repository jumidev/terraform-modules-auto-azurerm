data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_resource_management_private_link" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
}

##############################################################################################
# optional azurerm_resource_management_private_link_association 
##############################################################################################
resource "azurerm_resource_management_private_link_association" "this" {
  count                               = var.resource_management_private_link_association != null ? 1 : 0
  management_group_id                 = azurerm_management_group.this.id
  resource_management_private_link_id = azurerm_resource_management_private_link.this.id
  public_network_access_enabled       = lookup(var.resource_management_private_link_association, "public_network_access_enabled")
  name                                = lookup(var.resource_management_private_link_association, "name", null)
}
