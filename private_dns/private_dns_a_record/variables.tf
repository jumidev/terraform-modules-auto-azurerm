# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the DNS A Record. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created."
  type        = string

}
variable "zone_name" {
  description = "(REQUIRED) Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "ttl" {
  description = "(REQUIRED) The Time To Live (TTL) of the DNS record in seconds."
  type        = number
  default     = "300"
}
variable "records" {
  description = "(REQUIRED) List of IPv4 Addresses."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "private_dns_zone_resource_group_name" {
  description = "The Name of the Resource Group where the Private DNS Zone exists. If the Name of the Resource Group is not provided, the first Private DNS Zone from the list of Private DNS Zones in your subscription that matches 'name' will be returned..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
