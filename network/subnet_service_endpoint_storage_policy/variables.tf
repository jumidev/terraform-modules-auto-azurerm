# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "definition" {
  description = "A 'definition' block"
  type        = map(any)
  default     = null
}
#
# definition block structure:
#   service (string)          : The type of service resources. Valid values are 'Microsoft.Storage' or 'Global'. When the 'service_resources' property contains resource IDs, this property must be 'Microsoft.Storage'. When the 'service_resources' property contains Aliases, this property must be 'Global'. Defaults to 'Microsoft.Storage'.
#   service_resources (string): (REQUIRED) Specifies a list of resources or aliases that this Subnet Service Endpoint Storage Policy Definition applies to.
#   description (string)      : The description of this Subnet Service Endpoint Storage Policy Definition.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy."
  type        = map(any)
  default     = null
}
