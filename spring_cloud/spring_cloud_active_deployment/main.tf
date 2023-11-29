

resource "azurerm_spring_cloud_active_deployment" "this" {

  ########################################
  # required vars
  ########################################
  spring_cloud_app_id = var.spring_cloud_app_id
  deployment_name     = var.deployment_name
}
