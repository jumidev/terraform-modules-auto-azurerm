# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Express Route Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "express_route_circuit_peering_id" {
  description = "(REQUIRED) The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created."
  type        = string

}
variable "express_route_gateway_id" {
  description = "(REQUIRED) The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "authorization_key" {
  description = "The authorization key to establish the Express Route Connection."
  type        = string
  default     = null
}
variable "enable_internet_security" {
  description = "Is Internet security enabled for this Express Route Connection?"
  type        = bool
  default     = null
}
variable "express_route_gateway_bypass_enabled" {
  description = "Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "routing" {
  description = "A 'routing' block."
  type        = map(any)
  default     = null
}
#
# routing block structure           :
#   associated_route_table_id (string): The ID of the Virtual Hub Route Table associated with this Express Route Connection.
#   inbound_route_map_id (string)     : The ID of the Route Map associated with this Express Route Connection for inbound routes.
#   outbound_route_map_id (string)    : The ID of the Route Map associated with this Express Route Connection for outbound routes.
#   propagated_route_table (block)    : A 'propagated_route_table' block.
#
# propagated_route_table block structure:
#   labels (string)                       : The list of labels to logically group route tables.
#   route_table_ids (list)                : A list of IDs of the Virtual Hub Route Table to propagate routes from Express Route Connection to the route table.


variable "routing_weight" {
  description = "The routing weight associated to the Express Route Connection. Possible value is between '0' and '32000'. Defaults to '0'."
  type        = string
  default     = "0"
}
