# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Data Share Account. Changing this forces a new Data Share Account to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Data Share Account should exist. Changing this forces a new Data Share Account to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Data Share Account should exist. Changing this forces a new Data Share Account to be created."
  type        = string

}
variable "identity" {
  description = "(REQUIRED) An 'identity' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Data Share Account. The only possible value is 'SystemAssigned'. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Data Share Account."
  type        = map(any)
  default     = null
}
