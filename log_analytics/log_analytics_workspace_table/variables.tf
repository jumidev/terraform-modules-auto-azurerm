# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of a table in a Log Analytics Workspace."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) The object ID of the Log Analytics Workspace that contains the table."
  type        = string

}
variable "retention_in_days" {
  description = "(REQUIRED) The table's retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = number

}
