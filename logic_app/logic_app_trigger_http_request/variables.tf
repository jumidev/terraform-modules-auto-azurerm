# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the HTTP Request Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created."
  type        = string

}
variable "logic_app_id" {
  description = "(REQUIRED) Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created."
  type        = string

}
variable "schema" {
  description = "(REQUIRED) A JSON Blob defining the Schema of the incoming request. This needs to be valid JSON."
  type        = string

}

# OPTIONAL VARIABLES

variable "method" {
  description = "Specifies the HTTP Method which the request be using. Possible values include 'DELETE', 'GET', 'PATCH', 'POST' or 'PUT'."
  type        = string
  default     = null
}
variable "relative_path" {
  description = "Specifies the Relative Path used for this Request."
  type        = string
  default     = null
}
