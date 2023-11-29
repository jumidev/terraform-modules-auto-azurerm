# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "route_server_id" {
  description = "(REQUIRED) The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "peer_asn" {
  description = "(REQUIRED) The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "peer_ip" {
  description = "(REQUIRED) The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created."
  type        = string

}
