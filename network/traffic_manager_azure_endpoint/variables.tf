# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Azure Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "profile_id" {
  description = "(REQUIRED) The ID of the Traffic Manager Profile that this Azure Endpoint should be created within. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) The ID of the Azure Resource which should be used as a target."
  type        = string

}

# OPTIONAL VARIABLES

variable "weight" {
  description = "Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between '1' and '1000'."
  type        = string
  default     = null
}
variable "custom_header" {
  description = "One or more 'custom_header' blocks."
  type        = map(map(any))
  default     = null
}
#
# custom_header block structure:
#   name (string)                : (REQUIRED) The name of the custom header.
#   value (string)               : (REQUIRED) The value of custom header. Applicable for HTTP and HTTPS protocol.


variable "enabled" {
  description = "Is the endpoint enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "geo_mappings" {
  description = "A list of Geographic Regions used to distribute traffic, such as 'WORLD', 'UK' or 'DE'. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault)."
  type        = list(any)
  default     = []
}
variable "priority" {
  description = "Specifies the priority of this Endpoint, this must be specified for Profiles using the 'Priority' traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation."
  type        = string
  default     = null
}
variable "subnet" {
  description = "One or more 'subnet' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# subnet block structure:
#   first (string)        : (REQUIRED) The first IP Address in this subnet.
#   last (string)         : The last IP Address in this subnet.
#   scope (number)        : The block size (number of leading bits in the subnet mask).


