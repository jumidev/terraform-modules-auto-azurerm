# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Mobile Network. Changing this forces a new Mobile Network to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Mobile Network should exist. Changing this forces a new Mobile Network to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Mobile Network should exist. Changing this forces a new Mobile Network to be created. The possible values are 'eastus' and 'northeurope'."
  type        = string

}
variable "mobile_country_code" {
  description = "(REQUIRED) Mobile country code (MCC), defined in https://www.itu.int/rec/T-REC-E.212 . Changing this forces a new resource to be created."
  type        = string

}
variable "mobile_network_code" {
  description = "(REQUIRED) Mobile network code (MNC), defined in https://www.itu.int/rec/T-REC-E.212 . Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network."
  type        = map(any)
  default     = null
}
