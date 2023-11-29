# REQUIRED VARIABLES

variable "stream_analytics_job_id" {
  description = "(REQUIRED) The ID of the Stream Analytics Job that should be scheduled or started. Changing this forces a new resource to be created."
  type        = string

}
variable "start_mode" {
  description = "(REQUIRED) The starting mode of the Stream Analytics Job. Possible values are 'JobStartTime', 'CustomTime' and 'LastOutputEventTime'."
  type        = string

}

# OPTIONAL VARIABLES

variable "start_time" {
  description = "The time in ISO8601 format at which the Stream Analytics Job should be started e.g. '2022-04-01T00:00:00Z'. This property can only be specified if 'start_mode' is set to 'CustomTime'"
  type        = string
  default     = null
}
