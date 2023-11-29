data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channel_alexa" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  bot_name            = var.bot_name
  skill_id            = var.skill_id
}
