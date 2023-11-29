# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created."
  type        = string

}
variable "hpc_cache_id" {
  description = "(REQUIRED) The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created."
  type        = string

}
variable "access_rule" {
  description = "(REQUIRED) One or more 'access_rule' blocks (up to three) as defined below."
  type        = list(any)

}
