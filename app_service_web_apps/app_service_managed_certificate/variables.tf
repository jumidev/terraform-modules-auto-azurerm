# REQUIRED VARIABLES

variable "custom_hostname_binding_id" {
  description = "(REQUIRED) The ID of the App Service Custom Hostname Binding for the Certificate. Changing this forces a new App Service Managed Certificate to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the App Service Managed Certificate."
  type        = map(any)
  default     = null
}
