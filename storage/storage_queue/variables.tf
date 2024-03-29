# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Queue which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) Specifies the Storage Account in which the Storage Queue should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "metadata" {
  description = "A mapping of MetaData which should be assigned to this Storage Queue."
  type        = string
  default     = null
}
