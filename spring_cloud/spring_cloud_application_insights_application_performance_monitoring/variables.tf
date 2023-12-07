# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Application Performance Monitoring resource for Application Insights. Changing this forces a new resource to be created."
  type        = string

}
variable "spring_cloud_service_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Service. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "globally_enabled" {
  description = "Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "connection_string" {
  description = "The instrumentation key used to push data to Application Insights."
  type        = string
  default     = null
}
variable "role_name" {
  description = "Specifies the cloud role name used to label the component on the application map."
  type        = string
  default     = null
}
variable "role_instance" {
  description = "Specifies the cloud role instance."
  type        = string
  default     = null
}
variable "sampling_percentage" {
  description = "Specifies the percentage for fixed-percentage sampling."
  type        = string
  default     = null
}
variable "sampling_requests_per_second" {
  description = "Specifies the number of requests per second for the rate-limited sampling."
  type        = string
  default     = null
}
