

resource "azurerm_arc_kubernetes_cluster_extension" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  cluster_id     = var.cluster_id
  extension_type = var.extension_type

  identity {
    type = lookup(identity.value, "type") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  configuration_protected_settings = var.configuration_protected_settings
  configuration_settings           = var.configuration_settings
  release_train                    = var.release_train
  release_namespace                = var.release_namespace
  target_namespace                 = var.target_namespace
  version                          = var.version
}
