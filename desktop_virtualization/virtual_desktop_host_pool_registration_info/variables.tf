# REQUIRED VARIABLES

variable "expiration_date" {
  description = "(REQUIRED) A valid 'RFC3339Time' for the expiration of the token.."
  type        = string

}
variable "hostpool_id" {
  description = "(REQUIRED) The ID of the Virtual Desktop Host Pool to link the Registration Info to. Changing this forces a new Registration Info resource to be created. Only a single virtual_desktop_host_pool_registration_info resource should be associated with a given hostpool. Assigning multiple resources will produce inconsistent results."
  type        = string

}
