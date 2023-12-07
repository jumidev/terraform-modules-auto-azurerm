# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Stream Analytics Job. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region in which the Resource Group exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "stream_analytics_cluster_id" {
  description = "The ID of an existing Stream Analytics Cluster where the Stream Analytics Job should run."
  type        = string
  default     = null
}
variable "compatibility_level" {
  description = "Specifies the compatibility level for this job - which controls certain runtime behaviours of the streaming job. Possible values are '1.0', '1.1' and '1.2'."
  type        = string
  default     = null
}
variable "data_locale" {
  description = "Specifies the Data Locale of the Job, which [should be a supported .NET Culture](https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx)."
  type        = string
  default     = null
}
variable "events_late_arrival_max_delay_in_seconds" {
  description = "Specifies the maximum tolerable delay in seconds where events arriving late could be included. Supported range is '-1' (indefinite) to '1814399' (20d 23h 59m 59s). Default is '5'."
  type        = string
  default     = "5"
}
variable "events_out_of_order_max_delay_in_seconds" {
  description = "Specifies the maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order. Supported range is '0' to '599' (9m 59s). Default is '0'."
  type        = string
  default     = "0"
}
variable "events_out_of_order_policy" {
  description = "Specifies the policy which should be applied to events which arrive out of order in the input event stream. Possible values are 'Adjust' and 'Drop'. Default is 'Adjust'."
  type        = string
  default     = "Adjust"
}
variable "type" {
  description = "The type of the Stream Analytics Job. Possible values are 'Cloud' and 'Edge'. Defaults to 'Cloud'. Changing this forces a new resource to be created."
  type        = string
  default     = "Cloud"
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Stream Analytics Job. The only possible value is 'SystemAssigned'.


variable "output_error_policy" {
  description = "Specifies the policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size). Possible values are 'Drop' and 'Stop'. Default is 'Drop'."
  type        = string
  default     = "Drop"
}
variable "streaming_units" {
  description = "Specifies the number of streaming units that the streaming job uses. Supported values are '1', '3', '6' and multiples of '6' up to '120'."
  type        = string
  default     = null
}
variable "content_storage_policy" {
  description = "The policy for storing stream analytics content. Possible values are 'JobStorageAccount', 'SystemAccount'. Defaults to 'SystemAccount'."
  type        = string
  default     = "SystemAccount"
}
variable "job_storage_account" {
  description = "The details of the job storage account. A 'job_storage_account' block."
  type        = map(any)
  default     = null
}
#
# job_storage_account block structure:
#   authentication_mode (string)       : The authentication mode of the storage account. The only supported value is 'ConnectionString'. Defaults to 'ConnectionString'.
#   account_name (string)              : (REQUIRED) The name of the Azure storage account.
#   account_key (string)               : (REQUIRED) The account key for the Azure storage account.
#   transformation_query (string)      : (REQUIRED) Specifies the query that will be run in the streaming job, [written in Stream Analytics Query Language (SAQL)](https://msdn.microsoft.com/library/azure/dn834998).
#   tags (map)                         : A mapping of tags assigned to the resource.


