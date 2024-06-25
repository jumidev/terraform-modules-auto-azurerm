

resource "azurerm_container_app_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  name             = var.name
  container_app_id = var.container_app_id

  ########################################
  # optional vars
  ########################################
  container_app_environment_certificate_id = var.container_app_environment_certificate_id
  certificate_binding_type                 = var.certificate_binding_type
}
