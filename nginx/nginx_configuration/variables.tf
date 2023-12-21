# REQUIRED VARIABLES

variable "nginx_deployment_id" {
  description = "(REQUIRED) The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created."
  type        = string

}
variable "root_file" {
  description = "(REQUIRED) Specify the root file path of this Nginx Configuration."
  type        = string

}

# OPTIONAL VARIABLES

variable "package_data" {
  description = "Specify the package data for this configuration."
  type        = string
  default     = null
}
variable "config_file" {
  description = "One or more 'config_file' blocks."
  type        = map(map(any))
  default     = null
}
#
# config_file block structure:
#   content (string)           : (REQUIRED) Specifies the base-64 encoded contents of this config file.
#   virtual_path (string)      : (REQUIRED) Specify the path of this config file.


variable "protected_file" {
  description = "One or more 'protected_file' blocks with sensitive information as defined below. If specified 'config_file' must also be specified."
  type        = string
  default     = null
}
