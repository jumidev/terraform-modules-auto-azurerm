# REQUIRED VARIABLES

variable "container_app_environment_id" {
  description = "(REQUIRED) The ID of the Container Apps Managed Environment. Changing this forces a new resource to be created."
  type        = string

}
variable "certificate_blob_base64" {
  description = "(REQUIRED) The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 encoded PFX or PEM."
  type        = string

}
variable "dns_suffix" {
  description = "(REQUIRED) Custom DNS Suffix for the Container App Environment."
  type        = string

}
