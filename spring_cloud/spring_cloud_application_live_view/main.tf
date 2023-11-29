

resource "azurerm_spring_cloud_application_live_view" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_service_id = var.spring_cloud_service_id
}
