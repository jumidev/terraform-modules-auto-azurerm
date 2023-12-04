# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created."
  type        = string

}
variable "network_profile" {
  description = "(REQUIRED) A 'network_profile' block."
  type        = map(any)
}
#
# network_profile block structure   :
#   public_ip_address_ids (string)    : (REQUIRED) Specifies a list of Azure Public IP Address IDs.
#   vnet_configuration (block)        : (REQUIRED) A 'vnet_configuration' block.
#   egress_nat_ip_address_ids (string): Specifies a list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation.
#
# vnet_configuration block structure:
#   virtual_network_id (string)       : (REQUIRED) The ID of the Virtual Network.
#   trusted_subnet_id (string)        : The ID of the Trust subnet.
#   untrusted_subnet_id (string)      : The ID of the UnTrust subnet.


variable "panorama_base64_config" {
  description = "(REQUIRED) The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "destination_nat" {
  description = "One or more 'destination_nat' blocks."
  type        = map(map(any))
  default     = null
}
#
# destination_nat block structure:
#   protocol (string)              : (REQUIRED) The Protocol for this Destination NAT configuration. Possible values include 'TCP' and 'UDP'.
#   backend_config (block)         : A 'backend_config' block.
#   frontend_config (block)        : A 'frontend_config' block.
#
# backend_config block structure:
#   port (string)                 : (REQUIRED) The port number to send traffic to.
#   public_ip_address (string)    : (REQUIRED) The IP Address to send the traffic to.
#
# frontend_config block structure:
#   port (string)                  : (REQUIRED) The port on which to receive traffic.
#   public_ip_address_id (string)  : (REQUIRED) The ID of the Public IP Address on which to receive traffic.


variable "dns_settings" {
  description = "A 'dns_settings' block."
  type        = map(any)
  default     = null
}
#
# dns_settings block structure:
#   dns_servers (string)        : Specifies a list of DNS servers to use. Conflicts with 'dns_settings.0.use_azure_dns'.
#   use_azure_dns (bool)        : Should the Firewall use Azure Supplied DNS servers. Conflicts with 'dns_settings.0.dns_servers'. Defaults to 'false'.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama."
  type        = map(any)
  default     = null
}
