# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Storage Mover Project. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_mover_id" {
  description = "(REQUIRED) Specifies the ID of the storage mover for this Storage Mover Project. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Specifies a description for this Storage Mover Project."
  type        = string
  default     = null
}
