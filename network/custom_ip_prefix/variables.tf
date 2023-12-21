# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Custom IP Prefix. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location where the Custom IP Prefix should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which to create the Custom IP Prefix. Changing this forces a new resource to be created."
  type        = string

}
variable "cidr" {
  description = "(REQUIRED) The 'cidr' of the Custom IP Prefix, either IPv4 or IPv6. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "commissioning_enabled" {
  description = "Specifies that the custom IP prefix should be commissioned after provisioning in Azure. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "internet_advertising_disabled" {
  description = "Specifies that the custom IP prefix should not be publicly advertised on the Internet when commissioned (regional commissioning feature). Defaults to 'false'."
  type        = bool
  default     = false
}
variable "parent_custom_ip_prefix_id" {
  description = "Specifies the ID of the parent prefix. Only needed when creating a regional/child IPv6 prefix. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "roa_validity_end_date" {
  description = "The expiration date of the Route Origin Authorization (ROA) document which has been filed with the Routing Internet Registry (RIR) for this prefix. The expected format is 'YYYY-MM-DD'. Required when provisioning an IPv4 prefix or IPv6 global prefix. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the Custom IP Prefix."
  type        = map(any)
  default     = null
}
variable "wan_validation_signed_message" {
  description = "The signed base64-encoded authorization message, which will be sent to Microsoft for WAN verification. Required when provisioning an IPv4 prefix or IPv6 global prefix. Refer to [Azure documentation](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/create-custom-ip-address-prefix-cli#certificate-readiness) for more details about the process for your RIR. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this Custom IP Prefix should be located. Should not be specified when creating an IPv6 global prefix. Changing this forces a new resource to be created."
  type        = list(any)
  default     = []
}
