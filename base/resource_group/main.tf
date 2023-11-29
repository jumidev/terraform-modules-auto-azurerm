

resource "azurerm_resource_group" "this" {

  ########################################
  # required vars
  ########################################
  location = var.location
  name     = var.name

  ########################################
  # optional vars
  ########################################
  managed_by = var.managed_by
  tags       = var.tags
}
