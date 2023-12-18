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
