# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the DNS TXT Record. Changing this forces a new resource to be created."
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
variable "records" {
  description = "(REQUIRED) One or more 'record' blocks."
  type        = map(map(any))
}
#
# record block structure:
#   value (string)        : (REQUIRED) The value of the TXT record. Max length: 1024 characters


variable "ttl" {
  description = "(REQUIRED) The Time To Live (TTL) of the DNS record in seconds."
  type        = number

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
