

resource "azurerm_source_control_token" "this" {

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
