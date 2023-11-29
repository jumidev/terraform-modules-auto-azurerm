# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the Web Chat Channel should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "bot_name" {
  description = "(REQUIRED) The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "site_names" {
  description = "A list of Web Chat Site names."
  type        = list(any)
  default     = []
}
variable "site" {
  description = "A site represents a client application that you want to connect to your bot. One or more 'site' blocks."
  type        = map(map(any))
  default     = null
}
#
# site block structure              :
#   name (string)                     : (REQUIRED) The name of the site.
#   user_upload_enabled (bool)        : Is the user upload enabled for this site? Defaults to 'true'.
#   endpoint_parameters_enabled (bool): Is the endpoint parameters enabled for this site?
#   storage_enabled (bool)            : Is the storage site enabled for detailed logging? Defaults to 'true'.


