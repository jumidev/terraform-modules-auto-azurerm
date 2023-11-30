# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this Private Link Service. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Private Link Service should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "nat_ip_configuration" {
  description = "(REQUIRED) One or more (up to 8) 'nat_ip_configuration' block."
  type        = map(any)
}
#
# nat_ip_configuration block structure:
#   subnet_id (string)                  : (REQUIRED) Specifies the ID of the Subnet which should be used for the Private Link Service.
#   primary (bool)                      : (REQUIRED) Is this is the Primary IP Configuration? Changing this forces a new resource to be created.
#   private_ip_address (string)         : Specifies a Private Static IP Address for this IP Configuration.
#   private_ip_address_version (string) : The version of the IP Protocol which should be used. At this time the only supported value is 'IPv4'. Defaults to 'IPv4'.


variable "load_balancer_frontend_ip_configuration_ids" {
  description = "(REQUIRED) A list of Frontend IP Configuration IDs from a Standard Load Balancer, where traffic from the Private Link Service should be routed. You can use Load Balancer Rules to direct this traffic to appropriate backend pools where your applications are running. Changing this forces a new resource to be created."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "auto_approval_subscription_ids" {
  description = "A list of Subscription UUID/GUID's that will be automatically be able to use this Private Link Service."
  type        = list(any)
  default     = []
}
variable "enable_proxy_protocol" {
  description = "Should the Private Link Service support the Proxy Protocol?"
  type        = bool
  default     = null
}
variable "fqdns" {
  description = "List of FQDNs allowed for the Private Link Service."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "visibility_subscription_ids" {
  description = "A list of Subscription UUID/GUID's that will be able to see this Private Link Service."
  type        = list(any)
  default     = []
}
