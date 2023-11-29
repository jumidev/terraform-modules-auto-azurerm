# REQUIRED VARIABLES

variable "domain_name" {
  description = "(REQUIRED) The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created."
  type        = string

}
variable "static_site_id" {
  description = "(REQUIRED) The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "validation_type" {
  description = "One of 'cname-delegation' or 'dns-txt-token'. Changing this forces a new Static Site Custom Domain to be created."
  type        = string
  default     = null
}
