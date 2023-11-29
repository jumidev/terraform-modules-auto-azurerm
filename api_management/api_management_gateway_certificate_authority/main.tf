

resource "azurerm_api_management_gateway_certificate_authority" "this" {

  ########################################
  # required vars
  ########################################
  api_management_id = var.api_management_id
  certificate_name  = var.certificate_name
  gateway_name      = var.gateway_name

  ########################################
  # optional vars
  ########################################
  is_trusted = var.is_trusted
}
