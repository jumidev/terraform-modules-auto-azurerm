data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_service_certificate_order" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  auto_renew         = var.auto_renew # Default: True
  csr                = var.csr
  distinguished_name = var.distinguished_name
  key_size           = var.key_size          # Default: 2048
  product_type       = var.product_type      # Default: Standard
  validity_in_years  = var.validity_in_years # Default: 1
}
