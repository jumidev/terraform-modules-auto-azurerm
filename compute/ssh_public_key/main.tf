

resource "azurerm_ssh_public_key" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  public_key          = var.public_key
  resource_group_name = var.resource_group_name

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
