data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_ssh_public_key" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  public_key          = var.public_key
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
