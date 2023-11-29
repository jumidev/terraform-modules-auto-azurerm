

resource "azurerm_spring_cloud_gateway_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_gateway_id = var.spring_cloud_gateway_id

  ########################################
  # optional vars
  ########################################
  thumbprint = var.thumbprint
}
