data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_data_share_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  identity {
    type = lookup(identity.value, "type") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
