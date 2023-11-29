# REQUIRED VARIABLES

variable "api_management_name" {
  description = "(REQUIRED) The name of the API Management Service. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The Display Name for this API Management Product."
  type        = string

}
variable "product_id" {
  description = "(REQUIRED) The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created."
  type        = string

}
variable "published" {
  description = "(REQUIRED) Is this Product Published?"
  type        = bool

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "approval_required" {
  description = "Do subscribers need to be approved prior to being able to use the Product?"
  type        = string
  default     = null
}
variable "subscription_required" {
  description = "Is a Subscription required to access API's included in this Product? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "description" {
  description = "A description of this Product, which may include HTML formatting tags."
  type        = string
  default     = null
}
variable "subscriptions_limit" {
  description = "The number of subscriptions a user can have to this Product at the same time."
  type        = int
  default     = null
}
variable "terms" {
  description = "The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process."
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
