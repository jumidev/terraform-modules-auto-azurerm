

resource "azurerm_vmware_netapp_volume_attachment" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  netapp_volume_id  = var.netapp_volume_id
  vmware_cluster_id = var.vmware_cluster_id
}
