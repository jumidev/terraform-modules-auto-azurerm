# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Spring Cloud Deployment. Changing this forces a new resource to be created."
  type        = string

}
variable "spring_cloud_app_id" {
  description = "(REQUIRED) Specifies the id of the Spring Cloud Application in which to create the Deployment. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "environment_variables" {
  description = "Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs."
  type        = string
  default     = null
}
variable "instance_count" {
  description = "Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between '1' and '500'. Defaults to '1' if not specified."
  type        = int
  default     = 1
}
variable "jvm_options" {
  description = "Specifies the jvm option of the Spring Cloud Deployment."
  type        = string
  default     = null
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


variable "runtime_version" {
  description = "Specifies the runtime version of the Spring Cloud Deployment. Possible Values are 'Java_8', 'Java_11' and 'Java_17'. Defaults to 'Java_8'."
  type        = string
  default     = "Java_8"
}
