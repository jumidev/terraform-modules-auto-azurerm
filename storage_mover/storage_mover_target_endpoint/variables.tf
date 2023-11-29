# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Storage Mover Target Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_mover_id" {
  description = "(REQUIRED) Specifies the ID of the storage mover for this Storage Mover Target Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) Specifies the ID of the storage account for this Storage Mover Target Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_container_name" {
  description = "(REQUIRED) Specifies the name of the storage blob container for this Storage Mover Target Endpoint. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Specifies a description for the Storage Mover Target Endpoint."
  type        = string
  default     = null
}
variable "storage_container_storage_account_name" {
  description = "The name of the Storage Account where the Container exists..  If not specified, value of var.storage_account_name will be used."
  type        = string
  default     = null
}
