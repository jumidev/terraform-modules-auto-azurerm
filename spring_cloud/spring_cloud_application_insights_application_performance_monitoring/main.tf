

resource "azurerm_spring_cloud_application_insights_application_performance_monitoring" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_service_id = var.spring_cloud_service_id

  ########################################
  # optional vars
  ########################################
  globally_enabled             = var.globally_enabled # Default: False
  connection_string            = var.connection_string
  role_name                    = var.role_name
  role_instance                = var.role_instance
  sampling_percentage          = var.sampling_percentage
  sampling_requests_per_second = var.sampling_requests_per_second
}
