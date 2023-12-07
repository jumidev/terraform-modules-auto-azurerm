
# OPTIONAL VARIABLES

variable "name" {
  description = "The name which should be used for this VMware Private Cloud Netapp File Volume Attachment. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created."
  type        = string
  default     = null
}
variable "vmware_cluster_id" {
  description = "The vmware cluster for this VMware Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created."
  type        = string
  default     = null
}
