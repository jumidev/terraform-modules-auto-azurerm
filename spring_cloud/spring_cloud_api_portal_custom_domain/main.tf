

resource "azurerm_spring_cloud_api_portal_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  spring_cloud_api_portal_id = var.spring_cloud_api_portal_id

  ########################################
  # optional vars
  ########################################
  thumbprint = var.thumbprint
}
