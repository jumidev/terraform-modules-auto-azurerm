# REQUIRED VARIABLES

variable "spring_cloud_app_id" {
  description = "(REQUIRED) Specifies the id of the Spring Cloud Application. Changing this forces a new resource to be created."
  type        = string

}
variable "deployment_name" {
  description = "(REQUIRED) Specifies the name of Spring Cloud Deployment which is going to be active."
  type        = string

}
