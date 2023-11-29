data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channel_direct_line_speech" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name          = data.azurerm_resource_group.this.name
  location                     = var.location
  bot_name                     = var.bot_name
  cognitive_service_access_key = var.cognitive_service_access_key
  cognitive_service_location   = var.cognitive_service_location

  ########################################
  # optional vars
  ########################################
  cognitive_account_id       = var.cognitive_account_id
  custom_speech_model_id     = var.custom_speech_model_id
  custom_voice_deployment_id = var.custom_voice_deployment_id
}
