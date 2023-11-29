# REQUIRED VARIABLES

variable "iscsi_target_id" {
  description = "(REQUIRED) The ID of the iSCSI Target. Changing this forces a new iSCSI Target LUN to be created."
  type        = string

}
variable "disk_pool_managed_disk_attachment_id" {
  description = "(REQUIRED) The ID of the 'azurerm_disk_pool_managed_disk_attachment'. Changing this forces a new iSCSI Target LUN to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) User defined name for iSCSI LUN. Supported characters include uppercase letters, lowercase letters, numbers, periods, underscores or hyphens. Name should end with an alphanumeric character. The length must be between '1' and '90'. Changing this forces a new iSCSI Target LUN to be created."
  type        = string

}
