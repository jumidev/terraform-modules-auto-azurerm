# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Kusto EventHub Data Connection to create. Changing this forces a new resource to be created."
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
variable "eventhub_id" {
  description = "(REQUIRED) Specifies the resource id of the EventHub this data connection will use for ingestion. Changing this forces a new resource to be created."
  type        = string

}
variable "consumer_group" {
  description = "(REQUIRED) Specifies the EventHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "compression" {
  description = "Specifies compression type for the connection. Allowed values: 'GZip' and 'None'. Defaults to 'None'. Changing this forces a new resource to be created."
  type        = string
  default     = "None"
}
variable "event_system_properties" {
  description = "Specifies a list of system properties for the Event Hub."
  type        = list(any)
  default     = []
}
variable "table_name" {
  description = "Specifies the target table name used for the message ingestion. Table must exist before resource is created."
  type        = string
  default     = null
}
variable "identity_id" {
  description = "The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub."
  type        = string
  default     = null
}
variable "mapping_rule_name" {
  description = "Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created."
  type        = string
  default     = null
}
variable "data_format" {
  description = "Specifies the data format of the EventHub messages. Allowed values: 'APACHEAVRO', 'AVRO', 'CSV', 'JSON', 'MULTIJSON', 'ORC', 'PARQUET', 'PSV', 'RAW', 'SCSV', 'SINGLEJSON', 'SOHSV', 'TSVE', 'TSV', 'TXT', and 'W3CLOGFILE'."
  type        = string
  default     = null
}
variable "database_routing_type" {
  description = "Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: 'Single', 'Multi'. Changing this forces a new resource to be created. Defaults to 'Single'."
  type        = string
  default     = "Single"
}
variable "kusto_cluster_resource_group_name" {
  description = "The name of the Resource Group where the Kusto Cluster exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "kusto_database_resource_group_name" {
  description = "The Resource Group where the Kusto Database exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "kusto_database_cluster_name" {
  description = "The name of the Kusto Cluster this database is added to..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used."
  type        = string
  default     = null
}
