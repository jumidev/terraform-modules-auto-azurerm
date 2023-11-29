# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The name that Saved Search will be displayed as. Changing this forces a new resource to be created."
  type        = string

}
variable "category" {
  description = "(REQUIRED) The category that the Saved Search will be listed under. Changing this forces a new resource to be created."
  type        = string

}
variable "query" {
  description = "(REQUIRED) The query expression for the saved search. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "function_alias" {
  description = "The function alias if the query serves as a function. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "function_parameters" {
  description = "The function parameters if the query serves as a function. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
