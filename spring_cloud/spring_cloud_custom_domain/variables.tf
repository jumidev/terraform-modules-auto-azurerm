# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created."
  type        = string

}
variable "spring_cloud_app_id" {
  description = "(REQUIRED) Specifies the resource ID of the Spring Cloud Application. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "certificate_name" {
  description = "Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when 'thumbprint' is specified"
  type        = string
  default     = null
}
variable "thumbprint" {
  description = "Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when 'certificate_name' is specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
