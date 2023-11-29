# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Custom Event Trigger. Changing this forces a new resource to be created."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource."
  type        = string

}
variable "eventgrid_topic_id" {
  description = "(REQUIRED) The ID of Event Grid Topic in which event will be listened. Changing this forces a new resource."
  type        = string

}
variable "events" {
  description = "(REQUIRED) List of events that will fire this trigger. At least one event must be specified."
  type        = string

}
variable "pipeline" {
  description = "(REQUIRED) One or more 'pipeline' blocks."
  type        = map(map(any))
}
#
# pipeline block structure:
#   name (string)           : (REQUIRED) The Data Factory Pipeline name that the trigger will act on.
#   parameters (string)     : The Data Factory Pipeline parameters that the trigger will act on.



# OPTIONAL VARIABLES

variable "activated" {
  description = "Specifies if the Data Factory Custom Event Trigger is activated. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Custom Event Trigger."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Custom Event Trigger."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Data Factory Custom Event Trigger."
  type        = string
  default     = null
}
variable "subject_begins_with" {
  description = "The pattern that event subject starts with for trigger to fire."
  type        = string
  default     = null
}
variable "subject_ends_with" {
  description = "The pattern that event subject ends with for trigger to fire."
  type        = string
  default     = null
}
