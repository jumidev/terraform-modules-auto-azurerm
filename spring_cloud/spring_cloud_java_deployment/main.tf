

resource "azurerm_spring_cloud_java_deployment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  spring_cloud_app_id = var.spring_cloud_app_id

  ########################################
  # optional vars
  ########################################
  environment_variables = var.environment_variables
  instance_count        = var.instance_count # Default: 1
  jvm_options           = var.jvm_options

  dynamic "quota" { # var.quota
    for_each = var.quota != null ? var.quota : []
    content {
      cpu    = lookup(quota.value, "cpu", "1")
      memory = lookup(quota.value, "memory", "1Gi")
    }
  }

  runtime_version = var.runtime_version # Default: Java_8
}
