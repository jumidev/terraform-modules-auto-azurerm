# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Stream Analytics Managed Private Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Stream Analytics Managed Private Endpoint should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "stream_analytics_cluster_name" {
  description = "(REQUIRED) The name of the Stream Analytics Cluster where the Managed Private Endpoint should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) The ID of the Private Link Enabled Remote Resource which this Stream Analytics Private endpoint should be connected to. Changing this forces a new resource to be created."
  type        = string

}
variable "subresource_name" {
  description = "(REQUIRED) Specifies the sub resource name which the Stream Analytics Private Endpoint is able to connect to. Changing this forces a new resource to be created."
  type        = string

}
