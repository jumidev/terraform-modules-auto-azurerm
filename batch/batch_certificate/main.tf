data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_batch_certificate" "this" {

  ########################################
  # required vars
  ########################################
  account_name         = var.account_name
  resource_group_name  = data.azurerm_resource_group.this.name
  certificate          = var.certificate
  format               = var.format
  thumbprint           = var.thumbprint
  thumbprint_algorithm = var.thumbprint_algorithm

  ########################################
  # optional vars
  ########################################
  password = var.password
}
