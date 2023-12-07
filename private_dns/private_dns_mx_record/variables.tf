# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) Specifies the resource group where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "zone_name" {
  description = "(REQUIRED) Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "record" {
  description = "(REQUIRED) One or more 'record' blocks."
  type        = map(map(any))
}
#
# record block structure:
#   preference (string)   : (REQUIRED) The preference of the MX record.
#   exchange (string)     : (REQUIRED) The FQDN of the exchange to MX record points to.


variable "ttl" {
  description = "(REQUIRED) The Time To Live (TTL) of the DNS record in seconds."
  type        = number

}

# OPTIONAL VARIABLES

variable "name" {
  description = "The name of the DNS MX Record. Changing this forces a new resource to be created. Default to '@' for root zone entry."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "private_dns_zone_resource_group_name" {
  description = "The Name of the Resource Group where the Private DNS Zone exists. If the Name of the Resource Group is not provided, the first Private DNS Zone from the list of Private DNS Zones in your subscription that matches 'name' will be returned..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
