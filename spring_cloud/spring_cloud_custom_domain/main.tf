

resource "azurerm_spring_cloud_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  spring_cloud_app_id = var.spring_cloud_app_id

  ########################################
  # optional vars
  ########################################
  certificate_name = var.certificate_name
  thumbprint       = var.thumbprint
}
