

resource "azurerm_vmware_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  vmware_cloud_id    = var.vmware_cloud_id
  cluster_node_count = var.cluster_node_count
  sku_name           = var.sku_name
}

##############################################################################################
# optional azurerm_vmware_netapp_volume_attachment 
##############################################################################################
resource "azurerm_vmware_netapp_volume_attachment" "this" {
  count             = var.vmware_netapp_volume_attachment != null ? 1 : 0
  name              = lookup(var.vmware_netapp_volume_attachment, "name")
  netapp_volume_id  = azurerm_netapp_volume.this.id
  vmware_cluster_id = azurerm_vmware_cluster.this.id
}
