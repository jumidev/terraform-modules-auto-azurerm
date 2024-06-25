# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Storage Sync. Changing this forces a new Storage Sync Server Endpoint to be created."
  type        = string

}
variable "storage_sync_group_id" {
  description = "(REQUIRED) The ID of the Storage Sync Group where the Storage Sync Server Endpoint should exist. Changing this forces a new Storage Sync Server Endpoint to be created."
  type        = string

}
variable "registered_server_id" {
  description = "(REQUIRED) The ID of the Registered Server that will be associate with the Storage Sync Server Endpoint. Changing this forces a new Storage Sync Server Endpoint to be created. ~> **NOTE:** The target server must already be registered with the parent 'azurerm_storage_sync' prior to creating this endpoint. For more information on registering a server see the [Microsoft documentation](https://learn.microsoft.com/azure/storage/file-sync/file-sync-server-registration)"
  type        = string

}
variable "server_local_path" {
  description = "(REQUIRED) The path on the Windows Server to be synced to the Azure file share. Changing this forces a new Storage Sync Server Endpoint to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "cloud_tiering_enabled" {
  description = "Is Cloud Tiering Enabled? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "volume_free_space_percent" {
  description = "What percentage of free space on the volume should be preserved? Defaults to '20'."
  type        = string
  default     = "20"
}
variable "tier_files_older_than_days" {
  description = "Files older than the specified age will be tiered to the cloud."
  type        = number
  default     = null
}
variable "initial_download_policy" {
  description = "Specifies how the server initially downloads the Azure file share data. Valid Values includes 'NamespaceThenModifiedFiles', 'NamespaceOnly', and 'AvoidTieredFiles'. Defaults to 'NamespaceThenModifiedFiles'."
  type        = string
  default     = "NamespaceThenModifiedFiles"
}
variable "local_cache_mode" {
  description = "Specifies how to handle the local cache. Valid Values include 'UpdateLocallyCachedFiles' and 'DownloadNewAndModifiedFiles'. Defaults to 'UpdateLocallyCachedFiles'."
  type        = string
  default     = "UpdateLocallyCachedFiles"
}
