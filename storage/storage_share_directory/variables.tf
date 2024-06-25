# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_share_id" {
  description = "(REQUIRED) The Storage Share ID in which this file will be placed into. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "metadata" {
  description = "A mapping of metadata to assign to this Directory."
  type        = string
  default     = null
}
