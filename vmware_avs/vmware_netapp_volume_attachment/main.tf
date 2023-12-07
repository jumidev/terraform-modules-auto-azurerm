
##############################################################################################
# optional azurerm_vmware_netapp_volume_attachment 
##############################################################################################
resource "azurerm_vmware_netapp_volume_attachment" "this" {
  count             = var.vmware_cluster_id != null ? 1 : 0
  name              = var.name
  netapp_volume_id  = azurerm_netapp_volume.this.id
  vmware_cluster_id = var.vmware_cluster_id
}
