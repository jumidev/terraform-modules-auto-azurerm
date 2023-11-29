

resource "azurerm_spring_cloud_container_deployment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  spring_cloud_app_id = var.spring_cloud_app_id
  image               = var.image
  server              = var.server

  ########################################
  # optional vars
  ########################################
  addon_json                             = var.addon_json
  application_performance_monitoring_ids = var.application_performance_monitoring_ids
  arguments                              = var.arguments
  commands                               = var.commands
  environment_variables                  = var.environment_variables
  instance_count                         = var.instance_count # Default: 1
  language_framework                     = var.language_framework

  dynamic "quota" { # var.quota
    for_each = var.quota != null ? var.quota : []
    content {
      cpu    = lookup(quota.value, "cpu", "1")
      memory = lookup(quota.value, "memory", "1Gi")
    }
  }

}
