data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channel_ms_teams" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  bot_name            = var.bot_name

  ########################################
  # optional vars
  ########################################
  calling_web_hook       = var.calling_web_hook
  deployment_environment = var.deployment_environment # Default: CommercialDeployment
  enable_calling         = var.enable_calling         # Default: False
}
