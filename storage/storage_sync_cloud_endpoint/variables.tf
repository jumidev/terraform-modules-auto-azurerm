# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created."
  type        = string

}
variable "storage_sync_group_id" {
  description = "(REQUIRED) The ID of the Storage Sync Group where this Cloud Endpoint should be created. Changing this forces a new Storage Sync Cloud Endpoint to be created."
  type        = string

}
variable "file_share_name" {
  description = "(REQUIRED) The Storage Share name to be synchronized in this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "storage_account_tenant_id" {
  description = "The Tenant ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. Defaults to the current tenant id."
  type        = string
  default     = null
}
