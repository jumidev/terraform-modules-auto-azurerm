

resource "azurerm_spring_cloud_build_deployment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  spring_cloud_app_id = var.spring_cloud_app_id
  build_result_id     = var.build_result_id

  ########################################
  # optional vars
  ########################################
  addon_json            = var.addon_json
  environment_variables = var.environment_variables
  instance_count        = var.instance_count # Default: 1

  dynamic "quota" { # var.quota
    for_each = var.quota != null ? var.quota : []
    content {
      cpu    = lookup(quota.value, "cpu", "1")
      memory = lookup(quota.value, "memory", "1Gi")
    }
  }

}
