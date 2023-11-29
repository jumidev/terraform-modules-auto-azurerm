# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Gateway Custom Domain. Changing this forces a new Spring Cloud Gateway Custom Domain to be created."
  type        = string

}
variable "spring_cloud_gateway_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Custom Domain to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "thumbprint" {
  description = "Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Gateway Custom Domain."
  type        = string
  default     = null
}
