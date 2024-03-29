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
  description = "The Access Level configured for this Container. Possible values are 'blob', 'container' or 'private'. Defaults to 'private'."
  type        = string
  default     = "private"
}
variable "metadata" {
  description = "A mapping of MetaData for this Container. All metadata keys should be lowercase."
  type        = string
  default     = null
}
