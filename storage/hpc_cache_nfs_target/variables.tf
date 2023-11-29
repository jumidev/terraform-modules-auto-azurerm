# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the HPC Cache NFS Target. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which to create the HPC Cache NFS Target. Changing this forces a new resource to be created."
  type        = string

}
variable "cache_name" {
  description = "(REQUIRED) The name HPC Cache, which the HPC Cache NFS Target will be added to. Changing this forces a new resource to be created."
  type        = string

}
variable "target_host_name" {
  description = "(REQUIRED) The IP address or fully qualified domain name (FQDN) of the HPC Cache NFS target. Changing this forces a new resource to be created."
  type        = string

}
variable "usage_model" {
  description = "(REQUIRED) The type of usage of the HPC Cache NFS Target. Possible values are: 'READ_HEAVY_INFREQ', 'READ_HEAVY_CHECK_180', 'READ_ONLY', 'READ_WRITE', 'WRITE_WORKLOAD_15', 'WRITE_AROUND', 'WRITE_WORKLOAD_CHECK_30', 'WRITE_WORKLOAD_CHECK_60' and 'WRITE_WORKLOAD_CLOUDWS'."
  type        = string

}
