# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created."
  type        = string

}
variable "media_services_account_name" {
  description = "(REQUIRED) The Media Services account name. Changing this forces a new Streaming Endpoint to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Streaming Endpoint maximum length is '24'. Changing this forces a new Streaming Endpoint to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created."
  type        = string

}
variable "scale_units" {
  description = "(REQUIRED) The number of scale units. To create a Standard Streaming Endpoint set '0'. For Premium Streaming Endpoint valid values are between '1' and '10'."
  type        = number

}

# OPTIONAL VARIABLES

variable "access_control" {
  description = "A 'access_control' block."
  type        = map(any)
  default     = null
}
#
# access_control block structure                    :
#   akamai_signature_header_authentication_key (block): One or more 'akamai_signature_header_authentication_key' blocks.
#   ip_allow (block)                                  : A 'ip_allow' block.
#
# ip_allow block structure     :
#   address (string)             : The IP address to allow.
#   name (string)                : The friendly name for the IP address range.
#   subnet_prefix_length (string): The subnet mask prefix length (see CIDR notation).
#
# akamai_signature_header_authentication_key block structure:
#   base64_key (string)                                       : Authentication key.
#   expiration (string)                                       : The expiration time of the authentication key.
#   identifier (string)                                       : Identifier of the key.


variable "auto_start_enabled" {
  description = "The flag indicates if the resource should be automatically started on creation."
  type        = bool
  default     = null
}
variable "cdn_enabled" {
  description = "The CDN enabled flag."
  type        = bool
  default     = null
}
variable "cdn_profile" {
  description = "The CDN profile name."
  type        = string
  default     = null
}
variable "cdn_provider" {
  description = "The CDN provider name. Supported value are 'StandardVerizon','PremiumVerizon' and 'StandardAkamai'"
  type        = string
  default     = null
}
variable "cross_site_access_policy" {
  description = "A 'cross_site_access_policy' block."
  type        = map(any)
  default     = null
}
#
# cross_site_access_policy block structure:
#   client_access_policy (string)           : The content of 'clientaccesspolicy.xml' used by Silverlight.
#   cross_domain_policy (string)            : The content of 'crossdomain.xml' used by Silverlight.


variable "custom_host_names" {
  description = "The custom host names of the streaming endpoint."
  type        = string
  default     = null
}
variable "description" {
  description = "The streaming endpoint description."
  type        = string
  default     = null
}
variable "max_cache_age_seconds" {
  description = "Max cache age in seconds."
  type        = number
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Streaming Endpoint."
  type        = map(any)
  default     = null
}
