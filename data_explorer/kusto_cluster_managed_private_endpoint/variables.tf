# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Managed Private Endpoints to create. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_name" {
  description = "(REQUIRED) The name of the Kusto Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "private_link_resource_id" {
  description = "(REQUIRED) The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created."
  type        = string

}
variable "group_id" {
  description = "(REQUIRED) The group id in which the managed private endpoint is created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "private_link_resource_region" {
  description = "The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "request_message" {
  description = "The user request message."
  type        = string
  default     = null
}
