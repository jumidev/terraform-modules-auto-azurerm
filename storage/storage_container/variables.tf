# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) The name of the Storage Account where the Container should be created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "container_access_type" {
  description = "The Access Level configured for this Container. Possible values are 'blob', 'container' or 'private'. Defaults to 'private'. ~> **Note** When updating 'container_access_type' for an existing storage container resource, Shared Key authentication will always be used, as AzureAD authentication is not supported."
  type        = string
  default     = "private"
}
variable "default_encryption_scope" {
  description = "The default encryption scope to use for blobs uploaded to this container. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "encryption_scope_override_enabled" {
  description = "Whether to allow blobs to override the default encryption scope for this container. Can only be set when specifying 'default_encryption_scope'. Defaults to 'true'. Changing this forces a new resource to be created."
  type        = bool
  default     = true
}
variable "metadata" {
  description = "A mapping of MetaData for this Container. All metadata keys should be lowercase."
  type        = string
  default     = null
}
