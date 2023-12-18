

resource "azurerm_vmware_netapp_volume_attachment" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  netapp_volume_id  = azurerm_netapp_volume.this.id
  vmware_cluster_id = var.vmware_cluster_id
}
