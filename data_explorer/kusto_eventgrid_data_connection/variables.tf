# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Kusto Event Grid Data Connection to create. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location where the Kusto Database should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_name" {
  description = "(REQUIRED) Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created."
  type        = string

}
variable "database_name" {
  description = "(REQUIRED) Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) Specifies the resource id of the Storage Account this data connection will use for ingestion. Changing this forces a new resource to be created."
  type        = string

}
variable "eventhub_id" {
  description = "(REQUIRED) Specifies the resource id of the Event Hub this data connection will use for ingestion. Changing this forces a new resource to be created."
  type        = string

}
variable "eventhub_consumer_group_name" {
  description = "(REQUIRED) Specifies the Event Hub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "blob_storage_event_type" {
  description = "Specifies the blob storage event type that needs to be processed. Possible Values are 'Microsoft.Storage.BlobCreated' and 'Microsoft.Storage.BlobRenamed'. Defaults to 'Microsoft.Storage.BlobCreated'."
  type        = string
  default     = "Microsoft.Storage.BlobCreated"
}
variable "data_format" {
  description = "Specifies the data format of the EventHub messages. Allowed values: 'APACHEAVRO', 'AVRO', 'CSV', 'JSON', 'MULTIJSON', 'ORC', 'PARQUET', 'PSV', 'RAW', 'SCSV', 'SINGLEJSON', 'SOHSV', 'TSV', 'TSVE', 'TXT' and 'W3CLOGFILE'."
  type        = string
  default     = null
}
variable "database_routing_type" {
  description = "Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: 'Single', 'Multi'. Changing this forces a new resource to be created. Defaults to 'Single'."
  type        = string
  default     = "Single"
}
variable "eventgrid_resource_id" {
  description = "The resource ID of the event grid that is subscribed to the storage account events."
  type        = string
  default     = null
}
variable "managed_identity_resource_id" {
  description = "Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id."
  type        = string
  default     = null
}
variable "mapping_rule_name" {
  description = "Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created."
  type        = string
  default     = null
}
variable "table_name" {
  description = "Specifies the target table name used for the message ingestion. Table must exist before resource is created."
  type        = string
  default     = null
}
variable "skip_first_record" {
  description = "is the first record of every file ignored? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "kusto_cluster_resource_group_name" {
  description = "The name of the Resource Group where the Kusto Cluster exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "kusto_database_resource_group_name" {
  description = "The Resource Group where the Kusto Database exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "kusto_database_cluster_name" {
  description = "The name of the Kusto Cluster this database is added to..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used."
  type        = string
  default     = null
}
variable "eventhub_consumer_group_resource_group_name" {
  description = "The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
