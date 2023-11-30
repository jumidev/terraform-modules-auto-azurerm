# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Tumbling Window Trigger. Changing this forces a new resource to be created."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource."
  type        = string

}
variable "frequency" {
  description = "(REQUIRED) Specifies the frequency of Tumbling Window. Possible values are 'Hour', 'Minute' and 'Month'. Changing this forces a new resource."
  type        = string

}
variable "interval" {
  description = "(REQUIRED) Specifies the interval of Tumbling Window. Changing this forces a new resource."
  type        = string

}
variable "pipeline" {
  description = "(REQUIRED) A 'pipeline' block."
  type        = map(any)
}
#
# pipeline block structure:
#   parameters (string)     : The Data Factory Pipeline parameters that the trigger will act on.


variable "start_time" {
  description = "(REQUIRED) Specifies the start time of Tumbling Window, formatted as an RFC3339 string. Changing this forces a new resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "activated" {
  description = "Specifies if the Data Factory Tumbling Window Trigger is activated. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Tumbling Window Trigger."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Tumbling Window Trigger."
  type        = string
  default     = null
}
variable "delay" {
  description = "Specifies how long the trigger waits before triggering new run. formatted as an 'D.HH:MM:SS'."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Data Factory Tumbling Window Trigger."
  type        = string
  default     = null
}
variable "end_time" {
  description = "Specifies the end time of Tumbling Window, formatted as an RFC3339 string."
  type        = string
  default     = null
}
variable "max_concurrency" {
  description = "The max number for simultaneous trigger run fired by Tumbling Window. Possible values are between '1' and '50'. Defaults to '50'."
  type        = string
  default     = "50"
}
variable "retry" {
  description = "A 'retry' block."
  type        = map(any)
  default     = null
}
#
# retry block structure:
#   count (int)          : (REQUIRED) The maximum retry attempts if the pipeline run failed.
#   interval (string)    : The Interval in seconds between each retry if the pipeline run failed. Defaults to '30'.


variable "trigger_dependency" {
  description = "One or more 'trigger_dependency' block."
  type        = map(any)
  default     = null
}
#
# trigger_dependency block structure:
#   offset (string)                   : The offset of the dependency trigger. Must be in Timespan format (±hh:mm:ss) and must be a negative offset for a self dependency.
#   size (string)                     : The size of the dependency tumbling window. Must be in Timespan format (hh:mm:ss).
#   trigger_name (string)             : The dependency trigger name. If not specified, it will use self dependency.


