resource "random_string" "certificate_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_container_app_environment_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  container_app_environment_id = var.container_app_environment_id
  certificate_blob_base64      = var.certificate_blob_base64
  certificate_password         = random_string.certificate_password.result
  dns_suffix                   = var.dns_suffix
}
