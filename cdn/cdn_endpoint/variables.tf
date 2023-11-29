# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the CDN Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the CDN Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "profile_name" {
  description = "(REQUIRED) The CDN Profile to which to attach the CDN Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "is_http_allowed" {
  description = "Specifies if http allowed. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "is_https_allowed" {
  description = "Specifies if https allowed. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "content_types_to_compress" {
  description = "An array of strings that indicates a content types on which compression will be applied. The value for the elements should be MIME types."
  type        = string
  default     = null
}
