

resource "azurerm_nginx_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  nginx_deployment_id      = var.nginx_deployment_id
  certificate_virtual_path = var.certificate_virtual_path
  key_virtual_path         = var.key_virtual_path
  key_vault_secret_id      = var.key_vault_secret_id
}
