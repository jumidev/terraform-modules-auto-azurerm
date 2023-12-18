
##############################################################################################
# optional azurerm_vmware_netapp_volume_attachment 
##############################################################################################
resource "azurerm_vmware_netapp_volume_attachment" "this" {
  count             = var.vmware_netapp_volume_attachment != null ? 1 : 0
  name              = lookup(var.vmware_netapp_volume_attachment, "name")
  netapp_volume_id  = azurerm_netapp_volume.this.id
  vmware_cluster_id = lookup(var.vmware_netapp_volume_attachment, "vmware_cluster_id")
}
