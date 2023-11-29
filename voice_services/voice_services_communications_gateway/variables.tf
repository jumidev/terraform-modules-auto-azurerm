# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Voice Services Communications Gateways. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Voice Services Communications Gateways should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Voice Services Communications Gateways should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "connectivity" {
  description = "(REQUIRED) How to connect back to the operator network, e.g. MAPS. Possible values is 'PublicAddress'. Changing this forces a new Voice Services Communications Gateways to be created."
  type        = string

}
variable "codecs" {
  description = "(REQUIRED) The voice codecs expected for communication with Teams. Possible values are 'PCMA', 'PCMU','G722','G722_2','SILK_8' and 'SILK_16'."
  type        = string

}
variable "e911_type" {
  description = "(REQUIRED) How to handle 911 calls. Possible values are 'Standard' and 'DirectToEsrp'."
  type        = string

}
variable "platforms" {
  description = "(REQUIRED) The Voice Services Communications GatewaysAvailable supports platform types. Possible values are 'OperatorConnect', 'TeamsPhoneMobile'."
  type        = string

}
variable "service_location" {
  description = "(REQUIRED) A 'service_location' block."
  type        = map(any)
}
#
# service_location block structure                  :
#   location (string)                                 : (REQUIRED) Specifies the region in which the resources needed for Teams Calling will be deployed.
#   operator_addresses (string)                       : (REQUIRED) IP address to use to contact the operator network from this region.
#   allowed_media_source_address_prefixes (string)    : Specifies the allowed source IP address or CIDR ranges for media.
#   allowed_signaling_source_address_prefixes (string): Specifies the allowed source IP address or CIDR ranges for signaling.
#   esrp_addresses (string)                           : IP address to use to contact the ESRP from this region.



# OPTIONAL VARIABLES

variable "auto_generated_domain_name_label_scope" {
  description = "Specifies the scope at which the auto-generated domain name can be re-used. Possible values are 'TenantReuse', 'SubscriptionReuse', 'ResourceGroupReuse' and 'NoReuse' . Changing this forces a new resource to be created. Defaults to 'TenantReuse'."
  type        = string
  default     = "TenantReuse"
}
variable "api_bridge" {
  description = "Details of API bridge functionality, if required."
  type        = string
  default     = null
}
variable "emergency_dial_strings" {
  description = "A list of dial strings used for emergency calling."
  type        = list(any)
  default     = []
}
variable "on_prem_mcp_enabled" {
  description = "Whether an on-premises Mobile Control Point is in use."
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Voice Services Communications Gateways."
  type        = map(any)
  default     = null
}
variable "microsoft_teams_voicemail_pilot_number" {
  description = "This number is used in Teams Phone Mobile scenarios for access to the voicemail IVR from the native dialer."
  type        = string
  default     = null
}
