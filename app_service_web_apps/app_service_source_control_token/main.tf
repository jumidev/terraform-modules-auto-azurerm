

resource "azurerm_app_service_source_control_token" "this" {

  ########################################
  # required vars
  ########################################
  type  = var.type
  token = var.token

  ########################################
  # optional vars
  ########################################
  token_secret = var.token_secret
}
