# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this VMware Cluster. Changing this forces a new VMware Cluster to be created."
  type        = string

}
variable "vmware_cloud_id" {
  description = "(REQUIRED) The ID of the VMware Private Cloud in which to create this VMware Cluster. Changing this forces a new VMware Cluster to be created."
  type        = string

}
variable "cluster_node_count" {
  description = "(REQUIRED) The count of the VMware Cluster nodes."
  type        = int

}
variable "sku_name" {
  description = "(REQUIRED) The cluster SKU to use. Possible values are 'av20', 'av36', 'av36t', 'av36p' and 'av52'. Changing this forces a new VMware Cluster to be created."
  type        = string

}
