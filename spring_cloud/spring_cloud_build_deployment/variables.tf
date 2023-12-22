# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Build Deployment. Changing this forces a new Spring Cloud Build Deployment to be created."
  type        = string

}
variable "spring_cloud_app_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created."
  type        = string

}
variable "build_result_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Build Result."
  type        = string

}

# OPTIONAL VARIABLES

variable "addon_json" {
  description = "A JSON object that contains the addon configurations of the Spring Cloud Build Deployment."
  type        = string
  default     = null
}
variable "application_performance_monitoring_ids" {
  description = "Specifies a list of Spring Cloud Application Performance Monitoring IDs."
  type        = list(any)
  default     = []
}
variable "environment_variables" {
  description = "Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs."
  type        = string
  default     = null
}
variable "instance_count" {
  description = "Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between '1' and '500'. Defaults to '1' if not specified."
  type        = number
  default     = 1
}
variable "quota" {
  description = "A 'quota' block."
  type        = map(any)
  default     = null
}
#
# quota block structure:
#   cpu (string)         : Specifies the required cpu of the Spring Cloud Deployment. Possible Values are '500m', '1', '2', '3' and '4'. Defaults to '1' if not specified.
#   memory (string)      : Specifies the required memory size of the Spring Cloud Deployment. Possible Values are '512Mi', '1Gi', '2Gi', '3Gi', '4Gi', '5Gi', '6Gi', '7Gi', and '8Gi'. Defaults to '1Gi' if not specified.


