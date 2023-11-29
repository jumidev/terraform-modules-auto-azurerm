# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created."
  type        = string

}
variable "logic_app_id" {
  description = "(REQUIRED) Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created."
  type        = string

}
variable "body" {
  description = "(REQUIRED) Specifies the JSON Blob defining the Body of this Custom Trigger."
  type        = string

}
