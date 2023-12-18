
# OPTIONAL VARIABLES

variable "name" {
  description = "The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "display_name" {
  description = "A friendly name for this Management Group. If not specified, this will be the same as the 'name'."
  type        = string
  default     = null
}
variable "parent_management_group_id" {
  description = "The ID of the Parent Management Group."
  type        = string
  default     = null
}
variable "subscription_ids" {
  description = "A list of Subscription GUIDs which should be assigned to the Management Group."
  type        = list(any)
  default     = []
}

# OPTIONAL VARIABLES

variable "resource_management_private_link_association" {
  type    = map(any)
  default = null
}
# REQUIRED VARIABLES

variable "subscription_id" {
  description = "(REQUIRED) The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created."
  type        = string

}
