

resource "azurerm_voice_services_communications_gateway_test_line" "this" {

  ########################################
  # required vars
  ########################################
  name                                     = var.name
  location                                 = var.location
  voice_services_communications_gateway_id = var.voice_services_communications_gateway_id
  phone_number                             = var.phone_number
  purpose                                  = var.purpose

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
