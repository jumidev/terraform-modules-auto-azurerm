

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
# optional azurerm_management_group_subscription_association 
##############################################################################################
resource "azurerm_management_group_subscription_association" "this" {
  count               = var.subscription_id != null ? 1 : 0
  management_group_id = azurerm_management_group.this.id
  subscription_id     = var.subscription_id
}
