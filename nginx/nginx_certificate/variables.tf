# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Nginx Certificate. Changing this forces a new Nginx Certificate to be created."
  type        = string

}
variable "nginx_deployment_id" {
  description = "(REQUIRED) The ID of the Nginx Deployment that this Certificate should be associated with. Changing this forces a new Nginx Certificate to be created."
  type        = string

}
variable "certificate_virtual_path" {
  description = "(REQUIRED) Specify the path to the cert file of this certificate."
  type        = string

}
variable "key_virtual_path" {
  description = "(REQUIRED) Specify the path to the key file of this certificate."
  type        = string

}
variable "key_vault_secret_id" {
  description = "(REQUIRED) Specify the ID of the Key Vault Secret for this certificate."
  type        = string

}
