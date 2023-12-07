# REQUIRED VARIABLES

variable "batch_pool_id" {
  description = "(REQUIRED) The ID of the Batch Pool. Changing this forces a new Batch Job to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Batch Job. Changing this forces a new Batch Job to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "common_environment_properties" {
  description = "Specifies a map of common environment settings applied to this Batch Job. Changing this forces a new Batch Job to be created."
  type        = string
  default     = null
}
variable "display_name" {
  description = "The display name of this Batch Job. Changing this forces a new Batch Job to be created."
  type        = string
  default     = null
}
variable "task_retry_maximum" {
  description = "The number of retries to each Batch Task belongs to this Batch Job. If this is set to '0', the Batch service does not retry Tasks. If this is set to '-1', the Batch service retries Batch Tasks without limit."
  type        = number
  default     = null
}
variable "priority" {
  description = "The priority of this Batch Job, possible values can range from -1000 (lowest) to 1000 (highest). Defaults to '0'."
  type        = string
  default     = "0"
}
