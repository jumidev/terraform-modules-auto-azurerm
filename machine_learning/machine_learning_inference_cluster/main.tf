

resource "azurerm_machine_learning_inference_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                          = var.name
  kubernetes_cluster_id         = var.kubernetes_cluster_id
  location                      = var.location
  machine_learning_workspace_id = var.machine_learning_workspace_id

  ########################################
  # optional vars
  ########################################
  cluster_purpose = var.cluster_purpose
  description     = var.description

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "ssl" { # var.ssl
    for_each = var.ssl != null ? var.ssl : []
    content {
      cert                      = lookup(ssl.value, "cert", "")
      cname                     = lookup(ssl.value, "cname", "")
      key                       = lookup(ssl.value, "key", "")
      leaf_domain_label         = lookup(ssl.value, "leaf_domain_label", "")
      overwrite_existing_domain = lookup(ssl.value, "overwrite_existing_domain", "")
    }
  }

  tags = var.tags
}
