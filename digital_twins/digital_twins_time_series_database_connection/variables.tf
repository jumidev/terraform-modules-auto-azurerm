# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Digital Twins Time Series Database Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "digital_twins_id" {
  description = "(REQUIRED) The ID of the Digital Twins. Changing this forces a new resource to be created."
  type        = string

}
variable "eventhub_name" {
  description = "(REQUIRED) Name of the Event Hub. Changing this forces a new resource to be created."
  type        = string

}
variable "eventhub_namespace_endpoint_uri" {
  description = "(REQUIRED) URI of the Event Hub Namespace. Changing this forces a new resource to be created."
  type        = string

}
variable "eventhub_namespace_id" {
  description = "(REQUIRED) The ID of the Event Hub Namespace. Changing this forces a new resource to be created."
  type        = string

}
variable "kusto_cluster_id" {
  description = "(REQUIRED) The ID of the Kusto Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "kusto_cluster_uri" {
  description = "(REQUIRED) URI of the Kusto Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "kusto_database_name" {
  description = "(REQUIRED) Name of the Kusto Database. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "eventhub_consumer_group_name" {
  description = "Name of the Event Hub Consumer Group. Changing this forces a new resource to be created. Defaults to '$Default'."
  type        = string
  default     = "$Default"
}
variable "kusto_table_name" {
  description = "Name of the Kusto Table. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "eventhub_consumer_group_eventhub_name" {
  description = "Specifies the name of the EventHub..  If not specified, value of var.eventhub_name will be used."
  type        = string
  default     = null
}
variable "eventhub_consumer_group_resource_group_name" {
  description = "The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
