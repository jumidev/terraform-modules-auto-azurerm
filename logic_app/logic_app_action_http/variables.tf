# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created."
  type        = string

}
variable "logic_app_id" {
  description = "(REQUIRED) Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created."
  type        = string

}
variable "method" {
  description = "(REQUIRED) Specifies the HTTP Method which should be used for this HTTP Action. Possible values include 'DELETE', 'GET', 'PATCH', 'POST' and 'PUT'."
  type        = string

}
variable "uri" {
  description = "(REQUIRED) Specifies the URI which will be called when this HTTP Action is triggered."
  type        = string

}

# OPTIONAL VARIABLES

variable "body" {
  description = "Specifies the HTTP Body that should be sent to the 'uri' when this HTTP Action is triggered."
  type        = string
  default     = null
}
variable "headers" {
  description = "Specifies a Map of Key-Value Pairs that should be sent to the 'uri' when this HTTP Action is triggered."
  type        = string
  default     = null
}
variable "queries" {
  description = "Specifies a Map of Key-Value Pairs that should be sent to the 'uri' when this HTTP Action is triggered."
  type        = string
  default     = null
}
variable "run_after" {
  description = "Specifies the place of the HTTP Action in the Logic App Workflow. If not specified, the HTTP Action is right after the Trigger. A 'run_after' block is as defined below."
  type        = string
  default     = null
}
