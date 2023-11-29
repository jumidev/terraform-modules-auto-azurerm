# REQUIRED VARIABLES

variable "disk_pool_id" {
  description = "(REQUIRED) The ID of the Disk Pool. Changing this forces a new Disk Pool Managed Disk Attachment to be created."
  type        = string

}
variable "managed_disk_id" {
  description = "(REQUIRED) The ID of the Managed Disk. Changing this forces a new Disks Pool Managed Disk Attachment to be created."
  type        = string

}
