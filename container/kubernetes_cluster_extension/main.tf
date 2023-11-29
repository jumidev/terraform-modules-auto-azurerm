

resource "azurerm_kubernetes_cluster_extension" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  cluster_id     = var.cluster_id
  extension_type = var.extension_type

  ########################################
  # optional vars
  ########################################
  configuration_protected_settings = var.configuration_protected_settings
  configuration_settings           = var.configuration_settings

  dynamic "plan" { # var.plan
    for_each = var.plan != null ? var.plan : []
    content {
      name           = plan.key
      product        = lookup(plan.value, "product")   # (Required) 
      publisher      = lookup(plan.value, "publisher") # (Required) 
      promotion_code = lookup(plan.value, "promotion_code", null)
      version        = lookup(plan.value, "version", null)
    }
  }

  release_train     = var.release_train
  release_namespace = var.release_namespace
  target_namespace  = var.target_namespace
  version           = var.version
}
