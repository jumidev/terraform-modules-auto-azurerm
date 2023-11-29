# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Storage Mover Job Definition. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_mover_project_id" {
  description = "(REQUIRED) Specifies the ID of the Storage Mover Project. Changing this forces a new resource to be created."
  type        = string

}
variable "source_name" {
  description = "(REQUIRED) Specifies the name of the Storage Mover Source Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "target_name" {
  description = "(REQUIRED) Specifies the name of the Storage Mover target Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "copy_mode" {
  description = "(REQUIRED) Specifies the strategy to use for copy. Possible values are 'Additive' and 'Mirror'."
  type        = string

}

# OPTIONAL VARIABLES

variable "source_sub_path" {
  description = "Specifies the sub path to use when reading from the Storage Mover Source Endpoint. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "target_sub_path" {
  description = "Specifies the sub path to use when writing to the Storage Mover Target Endpoint. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "agent_name" {
  description = "Specifies the name of the Storage Mover Agent to assign for new Job Runs of this Storage Mover Job Definition."
  type        = string
  default     = null
}
variable "description" {
  description = "Specifies a description for this Storage Mover Job Definition."
  type        = string
  default     = null
}
