# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the DNS SRV Record. Changing this forces a new resource to be created."
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
#   priority (string)     : (REQUIRED) The priority of the SRV record.
#   weight (number)       : (REQUIRED) The Weight of the SRV record.
#   port (string)         : (REQUIRED) The Port the service is listening on.
#   target (string)       : (REQUIRED) The FQDN of the service.


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
