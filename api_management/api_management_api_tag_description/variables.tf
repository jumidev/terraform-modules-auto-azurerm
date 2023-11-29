# REQUIRED VARIABLES

variable "api_tag_id" {
  description = "(REQUIRED) The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the Tag."
  type        = string
  default     = null
}
variable "external_documentation_url" {
  description = "The URL of external documentation resources describing the tag."
  type        = string
  default     = null
}
variable "external_documentation_description" {
  description = "The description of the external documentation resources describing the tag."
  type        = string
  default     = null
}
