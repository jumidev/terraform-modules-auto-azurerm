
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

variable "resource_management_private_link_id" {
  description = "The Resource ID of Resource Management Private Link. Changing this forces a new Private Link Association to be created."
  type        = string
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether public network access is allowed. Changing this forces a new Private Link Association to be created."
  type        = bool
  default     = null
}
variable "name" {
  description = "Specifies the name of this Private Link Association, which should be a UUID. If 'name' is not provided, a UUID will be generated, you should use [the 'ignore_changes' attribute to ignore changes to this field](https://www.terraform.io/language/meta-arguments/lifecycle#ignore_changess). Changing this forces a new Private Link Association to be created."
  type        = string
  default     = null
}

# OPTIONAL VARIABLES

variable "subscription_id" {
  description = "The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created."
  type        = string
  default     = null
}
