# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the resource group in which the Monitor Smart Detector Alert Rule should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "detector_type" {
  description = "(REQUIRED) Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are 'FailureAnomaliesDetector', 'RequestPerformanceDegradationDetector', 'DependencyPerformanceDegradationDetector', 'ExceptionVolumeChangedDetector', 'TraceSeverityDetector', 'MemoryLeakDetector'."
  type        = string

}
variable "scope_resource_ids" {
  description = "(REQUIRED) Specifies the scopes of this Smart Detector Alert Rule."
  type        = string

}
variable "action_group" {
  description = "(REQUIRED) An 'action_group' block."
  type        = map(any)
}
#
# action_group block structure:
#   ids (string)                : (REQUIRED) Specifies the action group ids.
#   email_subject (string)      : Specifies a custom email subject if Email Receiver is specified in Monitor Action Group resource.
#   webhook_payload (string)    : A JSON String which Specifies the custom webhook payload if Webhook Receiver is specified in Monitor Action Group resource.


variable "severity" {
  description = "(REQUIRED) Specifies the severity of this Smart Detector Alert Rule. Possible values are 'Sev0', 'Sev1', 'Sev2', 'Sev3' or 'Sev4'."
  type        = string

}
variable "frequency" {
  description = "(REQUIRED) Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Specifies a description for the Smart Detector Alert Rule."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Is the Smart Detector Alert Rule enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "throttling_duration" {
  description = "Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
