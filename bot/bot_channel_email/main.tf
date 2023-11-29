data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
resource "random_string" "email_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_bot_channel_email" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  bot_name            = var.bot_name
  email_address       = var.email_address
  email_password      = random_string.email_password.result
}
