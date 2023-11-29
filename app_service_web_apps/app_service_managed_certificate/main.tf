

resource "azurerm_app_service_managed_certificate" "this" {

  ########################################
  # required vars
  ########################################
  custom_hostname_binding_id = var.custom_hostname_binding_id

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
