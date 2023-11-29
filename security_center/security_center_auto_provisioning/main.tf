

resource "azurerm_security_center_auto_provisioning" "this" {

  ########################################
  # required vars
  ########################################
  auto_provision = var.auto_provision
}
