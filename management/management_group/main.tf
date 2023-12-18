

resource "azurerm_management_group" "this" {

  ########################################
  # optional vars
  ########################################
  name                       = var.name
  display_name               = var.display_name
  parent_management_group_id = var.parent_management_group_id
  subscription_ids           = var.subscription_ids
}

##############################################################################################
# optional azurerm_resource_management_private_link_association 
##############################################################################################
resource "azurerm_resource_management_private_link_association" "this" {
  count                               = var.resource_management_private_link_association != null ? 1 : 0
  management_group_id                 = azurerm_management_group.this.id
  resource_management_private_link_id = lookup(var.resource_management_private_link_association, "resource_management_private_link_id")
  public_network_access_enabled       = lookup(var.resource_management_private_link_association, "public_network_access_enabled")
  name                                = lookup(var.resource_management_private_link_association, "name", null)
}

##############################################################################################
# optional azurerm_management_group_subscription_association 
##############################################################################################
resource "azurerm_management_group_subscription_association" "this" {
  count               = var.subscription_id != null ? 1 : 0
  management_group_id = azurerm_management_group.this.id
  subscription_id     = var.subscription_id
}
