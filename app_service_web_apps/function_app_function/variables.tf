# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the function. Changing this forces a new resource to be created."
  type        = string

}
variable "function_app_id" {
  description = "(REQUIRED) The ID of the Function App in which this function should reside. Changing this forces a new resource to be created."
  type        = string

}
variable "config_json" {
  description = "(REQUIRED) The config for this Function in JSON format."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Should this function be enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "file" {
  description = "A 'file' block as detailed below. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# file block structure:
#   content (string)    : (REQUIRED) The content of the file. Changing this forces a new resource to be created.


variable "language" {
  description = "The language the Function is written in. Possible values are 'CSharp', 'Custom', 'Java', 'Javascript', 'Python', 'PowerShell', and 'TypeScript'."
  type        = string
  default     = null
}
variable "test_data" {
  description = "The test data for the function."
  type        = string
  default     = null
}
