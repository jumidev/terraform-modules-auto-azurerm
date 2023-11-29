

resource "azurerm_security_center_setting" "this" {

  ########################################
  # required vars
  ########################################
  setting_name = var.setting_name
  enabled      = var.enabled
}
