resource "random_string" "certificate_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_container_app_environment_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  container_app_environment_id = var.container_app_environment_id
  certificate_blob_base64      = var.certificate_blob_base64
  certificate_password         = random_string.certificate_password.result

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
