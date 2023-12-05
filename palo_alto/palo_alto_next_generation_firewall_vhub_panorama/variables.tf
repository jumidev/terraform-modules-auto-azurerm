# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created."
  type        = string

}
variable "panorama_base64_config" {
  description = "(REQUIRED) The Base64 Encoded configuration value for connecting to the Panorama Configuration server."
  type        = string

}
variable "network_profile" {
  description = "(REQUIRED) A 'network_profile' block."
  type        = map(any)
}
#
# network_profile block structure      :
#   network_virtual_appliance_id (string): (REQUIRED) The ID of the Palo Alto Network Virtual Appliance in the VHub. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
#   public_ip_address_ids (string)       : (REQUIRED) Specifies a list of Public IP IDs to use for this Next Generation Firewall.
#   virtual_hub_id (string)              : (REQUIRED) The ID of the Virtual Hub this Next generation Fireall will be deployed in. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
#   egress_nat_ip_address_ids (string)   : Specifies a list of Public IP IDs to use for Egress NAT.



# OPTIONAL VARIABLES

variable "destination_nat" {
  description = "One or more 'destination_nat' blocks."
  type        = map(map(any))
  default     = null
}
#
# destination_nat block structure:
#   name (string)                  : (REQUIRED) The name which should be used for this NAT.
#   protocol (string)              : (REQUIRED) The protocol used for this Destination NAT. Possible values include 'TCP' and 'UDP'.
#   backend_config (block)         : A 'backend_config' block.
#   frontend_config (block)        : A 'frontend_config' block.
#
# backend_config block structure:
#   port (string)                 : (REQUIRED) The port number to send traffic to.
#   public_ip_address (string)    : (REQUIRED) The Public IP Address to send the traffic to.
#
# frontend_config block structure:
#   port (string)                  : (REQUIRED) The port on which traffic will be receiveed.
#   public_ip_address_id (string)  : (REQUIRED) The ID of the Public IP Address resource the traffic will be received on.


variable "dns_settings" {
  description = "A 'dns_settings' block."
  type        = map(any)
  default     = null
}
#
# dns_settings block structure:
#   dns_servers (string)        : Specifies a list of DNS servers to proxy. Conflicts with 'dns_settings.0.use_azure_dns'.
#   use_azure_dns (bool)        : Should Azure DNS servers be used? Conflicts with 'dns_settings.0.dns_servers'. Defaults to 'false'.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama."
  type        = map(any)
  default     = null
}
