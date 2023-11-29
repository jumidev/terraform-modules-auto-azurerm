# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Application Insights API key. Changing this forces a new resource to be created."
  type        = string

}
variable "application_insights_id" {
  description = "(REQUIRED) The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "read_permissions" {
  description = "Specifies the list of read permissions granted to the API key. Valid values are 'agentconfig', 'aggregate', 'api', 'draft', 'extendqueries', 'search'. Please note these values are case sensitive. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "write_permissions" {
  description = "Specifies the list of write permissions granted to the API key. Valid values are 'annotations'. Please note these values are case sensitive. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
