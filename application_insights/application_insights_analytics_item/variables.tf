# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created."
  type        = string

}
variable "application_insights_id" {
  description = "(REQUIRED) The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) The type of Analytics Item to create. Can be one of 'query', 'function', 'folder', 'recent'. Changing this forces a new resource to be created."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) The scope for the Analytics Item. Can be 'shared' or 'user'. Changing this forces a new resource to be created. Must be 'shared' for functions."
  type        = string

}
variable "content" {
  description = "(REQUIRED) The content for the Analytics Item, for example the query text if 'type' is 'query'."
  type        = string

}

# OPTIONAL VARIABLES

variable "function_alias" {
  description = "The alias to use for the function. Required when 'type' is 'function'."
  type        = string
  default     = null
}
