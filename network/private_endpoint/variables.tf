# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "private_service_connection" {
  description = "(REQUIRED) A 'private_service_connection' block."
  type        = map(any)
}
#
# private_service_connection block structure:
#   name (string)                             : (REQUIRED) Specifies the Name of the Private Service Connection. Changing this forces a new resource to be created.
#   is_manual_connection (string)             : (REQUIRED) Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created.
#   private_connection_resource_id (string)   : The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of 'private_connection_resource_id' or 'private_connection_resource_alias' must be specified. Changing this forces a new resource to be created. For a web app or function app slot, the parent web app should be used in this field instead of a reference to the slot itself.
#   private_connection_resource_alias (string): The Service Alias of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of 'private_connection_resource_id' or 'private_connection_resource_alias' must be specified. Changing this forces a new resource to be created.
#   subresource_names (string)                : A list of subresource names which the Private Endpoint is able to connect to. 'subresource_names' corresponds to 'group_id'. Possible values are detailed in the product [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#private-link-resource) in the 'Subresources' column. Changing this forces a new resource to be created.
#   request_message (string)                  : A message passed to the owner of the remote resource when the private endpoint attempts to establish the connection to the remote resource. The request message can be a maximum of '140' characters in length. Only valid if 'is_manual_connection' is set to 'true'.



# OPTIONAL VARIABLES

variable "custom_network_interface_name" {
  description = "The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "private_dns_zone_group" {
  description = "A 'private_dns_zone_group' block."
  type        = map(any)
  default     = null
}
#
# private_dns_zone_group block structure:
#   name (string)                         : (REQUIRED) Specifies the Name of the Private DNS Zone Group.
#   private_dns_zone_ids (string)         : (REQUIRED) Specifies the list of Private DNS Zones to include within the 'private_dns_zone_group'.


variable "ip_configuration" {
  description = "One or more 'ip_configuration' blocks. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet."
  type        = map(map(any))
  default     = null
}
#
# ip_configuration block structure:
#   name (string)                   : (REQUIRED) Specifies the Name of the IP Configuration. Changing this forces a new resource to be created.
#   private_ip_address (string)     : (REQUIRED) Specifies the static IP address within the private endpoint's subnet to be used. Changing this forces a new resource to be created.
#   subresource_name (string)       : Specifies the subresource this IP address applies to. 'subresource_names' corresponds to 'group_id'. Changing this forces a new resource to be created.
#   member_name (string)            : Specifies the member name this IP address applies to. If it is not specified, it will use the value of 'subresource_name'. Changing this forces a new resource to be created.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
