# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Virtual Hub Bgp Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_hub_id" {
  description = "(REQUIRED) The ID of the Virtual Hub within which this Bgp connection should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "peer_asn" {
  description = "(REQUIRED) The peer autonomous system number for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "peer_ip" {
  description = "(REQUIRED) The peer IP address for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "virtual_network_connection_id" {
  description = "The ID of virtual network connection."
  type        = string
  default     = null
}
