# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_hub_id" {
  description = "(REQUIRED) The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "labels" {
  description = "List of labels associated with this route table."
  type        = string
  default     = null
}
variable "route" {
  description = "One or more 'route' blocks."
  type        = map(map(any))
  default     = null
}
#
# route block structure     :
#   name (string)             : (REQUIRED) The name which should be used for this route.
#   destinations (list)       : (REQUIRED) A list of destination addresses for this route.
#   destinations_type (string): (REQUIRED) The type of destinations. Possible values are 'CIDR', 'ResourceId' and 'Service'.
#   next_hop (string)         : (REQUIRED) The next hop's resource ID.
#   next_hop_type (string)    : The type of next hop. Currently the only possible value is 'ResourceId'. Defaults to 'ResourceId'. ~> **Note:** The Routes can alternatively be created using the [virtual_hub_route_table_route](virtual_hub_route_table_route.html) resource. Using both inline and external routes is not supported and may result in unexpected configuration.


