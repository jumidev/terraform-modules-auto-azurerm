# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the resource group where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "soa_record" {
  description = "An 'soa_record' block."
  type        = map(any)
  default     = null
}
#
# soa_record block structure:
#   email (string)            : (REQUIRED) The email contact for the SOA record.
#   host_name (string)        : The domain name of the authoritative name server for the SOA record. If not set, computed value from Azure will be used.
#   expire_time (string)      : The expire time for the SOA record. Defaults to '2419200'.
#   minimum_ttl (string)      : The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to '300'.
#   refresh_time (string)     : The refresh time for the SOA record. Defaults to '3600'.
#   retry_time (string)       : The retry time for the SOA record. Defaults to '300'.
#   serial_number (string)    : The serial number for the SOA record. Defaults to '1'.
#   ttl (number)              : The Time To Live of the SOA Record in seconds. Defaults to '3600'.
#   tags (map)                : A mapping of tags to assign to the Record Set.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
