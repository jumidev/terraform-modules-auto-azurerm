# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the DNS A Record. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created."
  type        = string

}
variable "zone_name" {
  description = "(REQUIRED) Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created. ~> **Note:** The 'zone_name' should be the name of resource 'azurerm_dns_zone' instead of 'azurerm_private_dns_zone'."
  type        = string

}
variable "ttl" {
  description = "(REQUIRED) The Time To Live (TTL) of the DNS record in seconds."
  type        = number

}

# OPTIONAL VARIABLES

variable "records" {
  description = "List of IPv4 Addresses. Conflicts with 'target_resource_id'."
  type        = string
  default     = null
}
variable "target_resource_id" {
  description = "The Azure resource id of the target object. Conflicts with 'records'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource. ~> **Note:** either 'records' OR 'target_resource_id' must be specified, but not both."
  type        = map(any)
  default     = null
}
