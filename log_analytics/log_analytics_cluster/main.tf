data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_log_analytics_cluster" "this" {

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
  size_gb = var.size_gb # Default: 1000
  tags    = var.tags
}
