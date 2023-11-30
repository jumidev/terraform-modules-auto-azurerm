# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_hub_id" {
  description = "(REQUIRED) The resource ID of the Virtual Hub. Changing this forces a new resource to be created."
  type        = string

}
variable "routing_policy" {
  description = "(REQUIRED) One or more 'routing_policy' blocks."
  type        = map(map(any))
}
#
# routing_policy block structure:
#   destinations (string)         : (REQUIRED) A list of destinations which this routing policy is applicable to. Possible values are 'Internet' and 'PrivateTraffic'.
#   next_hop (string)             : (REQUIRED) The resource ID of the next hop on which this routing policy is applicable to.


