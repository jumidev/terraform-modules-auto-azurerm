# REQUIRED VARIABLES

variable "cache_name" {
  description = "(REQUIRED) The name of the HPC Cache, which the HPC Cache Blob NFS Target will be added to. Changing this forces a new HPC Cache Blob NFS Target to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this HPC Cache Blob NFS Target. Changing this forces a new HPC Cache Blob NFS Target to be created."
  type        = string

}
variable "namespace_path" {
  description = "(REQUIRED) The client-facing file path of the HPC Cache Blob NFS Target."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the HPC Cache Blob NFS Target should exist. Changing this forces a new HPC Cache Blob NFS Target to be created."
  type        = string

}
variable "storage_container_id" {
  description = "(REQUIRED) The Resource Manager ID of the Storage Container used as the HPC Cache Blob NFS Target. Changing this forces a new resource to be created."
  type        = string

}
variable "usage_model" {
  description = "(REQUIRED) The type of usage of the HPC Cache Blob NFS Target. Possible values are: 'READ_HEAVY_INFREQ', 'READ_HEAVY_CHECK_180', 'READ_ONLY', 'READ_WRITE', 'WRITE_WORKLOAD_15', 'WRITE_AROUND', 'WRITE_WORKLOAD_CHECK_30', 'WRITE_WORKLOAD_CHECK_60' and 'WRITE_WORKLOAD_CLOUDWS'."
  type        = string

}

# OPTIONAL VARIABLES

variable "verification_timer_in_seconds" {
  description = "The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between '1' and '31536000'."
  type        = string
  default     = null
}
variable "write_back_timer_in_seconds" {
  description = "The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between '1' and '31536000'."
  type        = string
  default     = null
}
variable "access_policy_name" {
  description = "The name of the access policy applied to this target. Defaults to 'default'."
  type        = string
  default     = "default"
}
