# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this VMware Private Cloud Netapp File Volume Attachment. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created."
  type        = string

}
variable "netapp_volume_id" {
  description = "(REQUIRED) The netapp file volume for this VMware Private Cloud Netapp File Volume Attachment to connect to. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created."
  type        = string

}
variable "vmware_cluster_id" {
  description = "(REQUIRED) The vmware cluster for this VMware Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created."
  type        = string

}
