# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created."
  type        = string

}
variable "spring_cloud_api_portal_id" {
  description = "(REQUIRED) The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "thumbprint" {
  description = "Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain."
  type        = string
  default     = null
}
