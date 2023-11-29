# REQUIRED VARIABLES

variable "cache_name" {
  description = "(REQUIRED) The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the HPC Cache Blob Target. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_path" {
  description = "(REQUIRED) The client-facing file path of the HPC Cache Blob Target."
  type        = string

}
variable "storage_container_id" {
  description = "(REQUIRED) The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "access_policy_name" {
  description = "The name of the access policy applied to this target. Defaults to 'default'."
  type        = string
  default     = "default"
}
