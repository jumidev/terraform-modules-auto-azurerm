# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "container_app_environment_id" {
  description = "(REQUIRED) The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created."
  type        = string

}
variable "certificate_blob_base64" {
  description = "(REQUIRED) The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
