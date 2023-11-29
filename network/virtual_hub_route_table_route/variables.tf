# REQUIRED VARIABLES

variable "route_table_id" {
  description = "(REQUIRED) The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this route. Changing this forces a new resource to be created."
  type        = string

}
variable "destinations" {
  description = "(REQUIRED) A list of destination addresses for this route."
  type        = list(any)

}
variable "destinations_type" {
  description = "(REQUIRED) The type of destinations. Possible values are 'CIDR', 'ResourceId' and 'Service'."
  type        = string

}
variable "next_hop" {
  description = "(REQUIRED) The next hop's resource ID."
  type        = string

}

# OPTIONAL VARIABLES

variable "next_hop_type" {
  description = "The type of next hop. Currently the only possible value is 'ResourceId'. Defaults to 'ResourceId'."
  type        = string
  default     = "ResourceId"
}
