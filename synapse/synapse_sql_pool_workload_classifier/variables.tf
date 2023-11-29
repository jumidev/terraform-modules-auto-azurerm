# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Synapse SQL Pool Workload Classifier. Changing this forces a new Synapse SQL Pool Workload Classifier to be created."
  type        = string

}
variable "workload_group_id" {
  description = "(REQUIRED) The ID of the Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Classifier to be created."
  type        = string

}
variable "member_name" {
  description = "(REQUIRED) The workload classifier member name used to classified against."
  type        = string

}

# OPTIONAL VARIABLES

variable "context" {
  description = "Specifies the session context value that a request can be classified against."
  type        = string
  default     = null
}
variable "end_time" {
  description = "The workload classifier end time for classification. It's of the 'HH:MM' format in UTC time zone."
  type        = string
  default     = null
}
variable "importance" {
  description = "The workload classifier importance. The allowed values are 'low', 'below_normal', 'normal', 'above_normal' and 'high'."
  type        = string
  default     = null
}
variable "label" {
  description = "Specifies the label value that a request can be classified against."
  type        = string
  default     = null
}
variable "start_time" {
  description = "The workload classifier start time for classification. It's of the 'HH:MM' format in UTC time zone."
  type        = string
  default     = null
}
