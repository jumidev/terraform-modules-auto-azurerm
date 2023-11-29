data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channel_slack" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  bot_name            = var.bot_name
  client_id           = var.client_id
  client_secret       = var.client_secret
  verification_token  = var.verification_token

  ########################################
  # optional vars
  ########################################
  landing_page_url = var.landing_page_url
  signing_secret   = var.signing_secret
}
