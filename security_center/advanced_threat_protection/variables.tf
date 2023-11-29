# REQUIRED VARIABLES

variable "target_resource_id" {
  description = "(REQUIRED) The ID of the Azure Resource which to enable Advanced Threat Protection on. Changing this forces a new resource to be created."
  type        = string

}
variable "enabled" {
  description = "(REQUIRED) Should Advanced Threat Protection be enabled on this resource?"
  type        = bool

}
