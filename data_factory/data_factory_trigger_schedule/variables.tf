# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Schedule Trigger. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The Schedule Trigger's description."
  type        = string
  default     = null
}
variable "schedule" {
  description = "A 'schedule' block, which further specifies the recurrence schedule for the trigger. A schedule is capable of limiting or increasing the number of trigger executions specified by the 'frequency' and 'interval' properties."
  type        = string
  default     = null
}
variable "start_time" {
  description = "The time the Schedule Trigger will start. This defaults to the current time. The time will be represented in UTC."
  type        = string
  default     = null
}
variable "time_zone" {
  description = "The timezone of the start/end time."
  type        = string
  default     = null
}
variable "end_time" {
  description = "The time the Schedule Trigger should end. The time will be represented in UTC."
  type        = string
  default     = null
}
variable "interval" {
  description = "The interval for how often the trigger occurs. This defaults to '1'."
  type        = string
  default     = "1"
}
variable "frequency" {
  description = "The trigger frequency. Valid values include 'Minute', 'Hour', 'Day', 'Week', 'Month'. Defaults to 'Minute'."
  type        = string
  default     = "Minute"
}
variable "activated" {
  description = "Specifies if the Data Factory Schedule Trigger is activated. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "pipeline" {
  description = "A 'pipeline' block."
  type        = map(any)
  default     = null
}
#
# pipeline block structure:
#   name (string)           : (REQUIRED) Reference pipeline name.
#   parameters (string)     : The pipeline parameters that the trigger will act upon.


variable "pipeline_name" {
  description = "The Data Factory Pipeline name that the trigger will act on."
  type        = string
  default     = null
}
variable "pipeline_parameters" {
  description = "The pipeline parameters that the trigger will act upon."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Schedule Trigger."
  type        = string
  default     = null
}
