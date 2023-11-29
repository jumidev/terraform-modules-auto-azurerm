# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Subscription Network Manager Connection. Changing this forces a new Network Subscription Network Manager Connection to be created."
  type        = string

}
variable "subscription_id" {
  description = "(REQUIRED) Specifies the ID of the target Subscription. Changing this forces a new resource to be created."
  type        = string

}
variable "network_manager_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager which the Subscription is connected to."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of the Network Manager Subscription Connection."
  type        = string
  default     = null
}
