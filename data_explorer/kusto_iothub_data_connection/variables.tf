# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Kusto IotHub Data Connection to create. Changing this forces a new resource to be created."
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
variable "iothub_id" {
  description = "(REQUIRED) Specifies the resource id of the IotHub this data connection will use for ingestion. Changing this forces a new resource to be created."
  type        = string

}
variable "consumer_group" {
  description = "(REQUIRED) Specifies the IotHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created."
  type        = string

}
variable "shared_access_policy_name" {
  description = "(REQUIRED) Specifies the IotHub Shared Access Policy this data connection will use for ingestion, which must have read permission. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "event_system_properties" {
  description = "Specifies the System Properties that each IoT Hub message should contain. Changing this forces a new resource to be created. Possible values are 'message-id', 'sequence-number', 'to', 'absolute-expiry-time', 'iothub-enqueuedtime', 'correlation-id', 'user-id', 'iothub-ack', 'iothub-connection-device-id', 'iothub-connection-auth-generation-id' and 'iothub-connection-auth-method'."
  type        = string
  default     = null
}
variable "table_name" {
  description = "Specifies the target table name used for the message ingestion. Table must exist before resource is created. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "mapping_rule_name" {
  description = "Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "data_format" {
  description = "Specifies the data format of the IoTHub messages. Allowed values: 'APACHEAVRO', 'AVRO', 'CSV', 'JSON', 'MULTIJSON', 'ORC', 'PARQUET', 'PSV', 'RAW', 'SCSV', 'SINGLEJSON', 'SOHSV', 'TSV', 'TSVE', 'TXT' and 'W3CLOGFILE'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "database_routing_type" {
  description = "Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: 'Single', 'Multi'. Changing this forces a new resource to be created. Defaults to 'Single'."
  type        = string
  default     = "Single"
}
variable "kusto_cluster_resource_group_name" {
  description = "The name of the Resource Group where the Kusto Cluster exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "kusto_database_resource_group_name" {
  description = "The Resource Group where the Kusto Database exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "kusto_database_cluster_name" {
  description = "The name of the Kusto Cluster this database is added to..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used."
  type        = string
  default     = null
}
