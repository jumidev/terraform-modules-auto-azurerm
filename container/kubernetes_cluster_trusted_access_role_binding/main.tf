

resource "azurerm_kubernetes_cluster_trusted_access_role_binding" "this" {

  ########################################
  # required vars
  ########################################
  kubernetes_cluster_id = var.kubernetes_cluster_id
  name                  = var.name
  roles                 = var.roles
  source_resource_id    = var.source_resource_id
}
