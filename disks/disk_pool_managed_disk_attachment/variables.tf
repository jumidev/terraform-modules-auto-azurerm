
# OPTIONAL VARIABLES

variable "managed_disk_id" {
  description = "The ID of the Managed Disk. Changing this forces a new Disks Pool Managed Disk Attachment to be created."
  type        = string
  default     = null
}
