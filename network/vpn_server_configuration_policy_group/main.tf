

resource "azurerm_vpn_server_configuration_policy_group" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  vpn_server_configuration_id = var.vpn_server_configuration_id
  policy                      = var.policy

  ########################################
  # optional vars
  ########################################
  is_default = var.is_default # Default: False
  priority   = var.priority   # Default: 0
}
