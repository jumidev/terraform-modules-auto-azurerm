data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channel_sms" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name             = data.azurerm_resource_group.this.name
  location                        = var.location
  bot_name                        = var.bot_name
  phone_number                    = var.phone_number
  sms_channel_account_security_id = var.sms_channel_account_security_id
  sms_channel_auth_token          = var.sms_channel_auth_token
}
