# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Storage Mover Agent. Changing this forces a new resource to be created."
  type        = string

}
variable "arc_virtual_machine_id" {
  description = "(REQUIRED) Specifies the fully qualified ID of the Hybrid Compute resource for the Storage Mover Agent. Changing this forces a new resource to be created."
  type        = string

}
variable "arc_virtual_machine_uuid" {
  description = "(REQUIRED) Specifies the Hybrid Compute resource's unique SMBIOS ID. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_mover_id" {
  description = "(REQUIRED) Specifies the ID of the Storage Mover that this Agent should be connected to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Specifies a description for this Storage Mover Agent."
  type        = string
  default     = null
}
