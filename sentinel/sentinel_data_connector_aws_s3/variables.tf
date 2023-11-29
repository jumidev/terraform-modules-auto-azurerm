# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this AWS S3 Data Connector. Changing this forces a new AWS S3 Data Connector to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that this AWS S3 Data Connector resides in. Changing this forces a new AWS S3 Data Connector to be created."
  type        = string

}
variable "aws_role_arn" {
  description = "(REQUIRED) The ARN of the AWS role, which is connected to this AWS CloudTrail Data Connector. See the [Azure document](https://docs.microsoft.com/azure/sentinel/connect-aws?tabs=s3#create-an-aws-assumed-role-and-grant-access-to-the-aws-sentinel-account) for details."
  type        = string

}
variable "destination_table" {
  description = "(REQUIRED) The name of the Log Analytics table that will store the ingested data."
  type        = string

}
variable "sqs_urls" {
  description = "(REQUIRED) Specifies a list of AWS SQS urls for the AWS S3 Data Connector."
  type        = string

}
