output "name" {
  value = azurerm_vmware_netapp_volume_attachment.this.*.name
}

output "netapp_volume_id" {
  value = azurerm_vmware_netapp_volume_attachment.this.*.netapp_volume_id
}

output "vmware_cluster_id" {
  value = azurerm_vmware_netapp_volume_attachment.this.*.vmware_cluster_id
}

