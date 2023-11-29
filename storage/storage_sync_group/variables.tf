# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Storage Sync Group. Changing this forces a new Storage Sync Group to be created."
  type        = string

}
variable "storage_sync_id" {
  description = "(REQUIRED) The resource ID of the Storage Sync where this Storage Sync Group is. Changing this forces a new Storage Sync Group to be created."
  type        = string

}
