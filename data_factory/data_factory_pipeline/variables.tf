# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Pipeline. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description for the Data Factory Pipeline."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Pipeline."
  type        = string
  default     = null
}
variable "concurrency" {
  description = "The max number of concurrent runs for the Data Factory Pipeline. Must be between '1' and '50'."
  type        = number
  default     = null
}
variable "folder" {
  description = "The folder that this Pipeline is in. If not specified, the Pipeline will appear at the root level."
  type        = string
  default     = null
}
variable "moniter_metrics_after_duration" {
  description = "The TimeSpan value after which an Azure Monitoring Metric is fired."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Pipeline."
  type        = string
  default     = null
}
variable "variables" {
  description = "A map of variables to associate with the Data Factory Pipeline."
  type        = string
  default     = null
}
variable "activities_json" {
  description = "A JSON object that contains the activities that will be associated with the Data Factory Pipeline."
  type        = string
  default     = null
}
