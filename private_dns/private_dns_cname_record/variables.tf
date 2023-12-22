# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the DNS CNAME Record. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the resource group where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "zone_name" {
  description = "(REQUIRED) Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "ttl" {
  description = "(REQUIRED) The Time To Live (TTL) of the DNS record in seconds. Possible values are between '0' and '2147483647'."
  type        = number

}
variable "record" {
  description = "(REQUIRED) The target of the CNAME."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
