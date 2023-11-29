

resource "azurerm_vmware_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  vmware_cloud_id    = var.vmware_cloud_id
  cluster_node_count = var.cluster_node_count
  sku_name           = var.sku_name
}
