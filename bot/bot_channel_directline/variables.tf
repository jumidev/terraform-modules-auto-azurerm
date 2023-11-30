# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "bot_name" {
  description = "(REQUIRED) The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created."
  type        = string

}
variable "site" {
  description = "(REQUIRED) A site represents a client application that you want to connect to your bot. One or more 'site' blocks."
  type        = map(map(any))
}
#
# site block structure                  :
#   user_upload_enabled (bool)            : Is the user upload enabled for this site? Defaults to 'true'.
#   enabled (bool)                        : Enables/Disables this site. Defaults to 'true'.
#   endpoint_parameters_enabled (bool)    : Is the endpoint parameters enabled for this site?
#   storage_enabled (bool)                : Is the storage site enabled for detailed logging? Defaults to 'true'.
#   v1_allowed (bool)                     : Enables v1 of the Directline protocol for this site. Defaults to 'true'.
#   v3_allowed (bool)                     : Enables v3 of the Directline protocol for this site. Defaults to 'true'.
#   enhanced_authentication_enabled (bool): Enables additional security measures for this site, see [Enhanced Directline Authentication Features](https://blog.botframework.com/2018/09/25/enhanced-direct-line-authentication-features). Disabled by default.
#   trusted_origins (string)              : This field is required when 'is_secure_site_enabled' is enabled. Determines which origins can establish a Directline conversation for this site.


