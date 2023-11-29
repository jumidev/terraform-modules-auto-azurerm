

resource "azurerm_api_management_gateway_host_name_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  api_management_id = var.api_management_id
  gateway_name      = var.gateway_name
  certificate_id    = var.certificate_id
  host_name         = var.host_name

  ########################################
  # optional vars
  ########################################
  request_client_certificate_enabled = var.request_client_certificate_enabled
  http2_enabled                      = var.http2_enabled # Default: True
  tls10_enabled                      = var.tls10_enabled
  tls11_enabled                      = var.tls11_enabled
}
