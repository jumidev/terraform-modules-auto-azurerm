data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_elastic_san" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  base_size_in_tib    = var.base_size_in_tib

  sku {
    name = lookup(sku.value, "name") # (Required) 
    tier = lookup(sku.value, "tier", null)
  }


  ########################################
  # optional vars
  ########################################
  extended_size_in_tib = var.extended_size_in_tib
  zones                = var.zones
  tags                 = var.tags
}
