# REQUIRED VARIABLES

variable "aws_role_arn" {
  description = "(REQUIRED) The ARN of the AWS CloudTrail role, which is connected to this AWS CloudTrail Data Connector."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that this AWS CloudTrail Data Connector resides in. Changing this forces a new AWS CloudTrail Data Connector to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this AWS CloudTrail Data Connector. Changing this forces a new AWS CloudTrail Data Connector to be created."
  type        = string

}
