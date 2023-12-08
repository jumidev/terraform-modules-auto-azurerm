output "vmware_netapp_volume_attachment.name" {
  value = lookup(var.vmware_netapp_volume_attachment, "name", null)
}

output "vmware_netapp_volume_attachment.netapp_volume_id" {
  value = lookup(var.vmware_netapp_volume_attachment, "netapp_volume_id", null)
}

output "vmware_netapp_volume_attachment.vmware_cluster_id" {
  value = lookup(var.vmware_netapp_volume_attachment, "vmware_cluster_id", null)
}

