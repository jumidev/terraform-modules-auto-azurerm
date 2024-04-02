

resource "azurerm_disk_access" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
