

resource "azurerm_kubernetes_fleet_member" "this" {

  ########################################
  # required vars
  ########################################
  kubernetes_cluster_id = var.kubernetes_cluster_id
  kubernetes_fleet_id   = var.kubernetes_fleet_id
  name                  = var.name

  ########################################
  # optional vars
  ########################################
  group = var.group
}
