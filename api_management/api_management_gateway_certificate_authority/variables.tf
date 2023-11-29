# REQUIRED VARIABLES

variable "api_management_id" {
  description = "(REQUIRED) The ID of the API Management Service. Changing this forces a new resource to be created."
  type        = string

}
variable "certificate_name" {
  description = "(REQUIRED) The name of the API Management Certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "gateway_name" {
  description = "(REQUIRED) The name of the API Management Gateway. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "is_trusted" {
  description = "Whether the API Management Gateway Certificate Authority is trusted."
  type        = bool
  default     = null
}
