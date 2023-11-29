

resource "azurerm_ip_group_cidr" "this" {

  ########################################
  # required vars
  ########################################
  ip_group_id = var.ip_group_id
  cidr        = var.cidr
}
