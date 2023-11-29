# azurerm_kusto_eventhub_data_connection

Manages a Kusto (also known as Azure Data Explorer) EventHub Data Connection

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Kusto EventHub Data Connection to create. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string | True | -  |  Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created. | 
| **var.compression** | string | False | `None`  |  Specifies compression type for the connection. Allowed values: `GZip` and `None`. Defaults to `None`. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | -  |  Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created. | 
| **var.eventhub_id** | string | True | -  |  Specifies the resource id of the EventHub this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **var.event_system_properties** | string | False | -  |  Specifies a list of system properties for the Event Hub. | 
| **var.consumer_group** | string | True | -  |  Specifies the EventHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **var.table_name** | string | False | -  |  Specifies the target table name used for the message ingestion. Table must exist before resource is created. | 
| **var.identity_id** | string | False | -  |  The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub. | 
| **var.mapping_rule_name** | string | False | -  |  Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. | 
| **var.data_format** | string | False | -  |  Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSVE`, `TSV`, `TXT`, and `W3CLOGFILE`. | 
| **var.database_routing_type** | string | False | `Single`  |  Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **cluster_name** | string  | - | 
| **compression** | string  | - | 
| **database_name** | string  | - | 
| **eventhub_id** | string  | - | 
| **event_system_properties** | string  | - | 
| **consumer_group** | string  | - | 
| **table_name** | string  | - | 
| **identity_id** | string  | - | 
| **mapping_rule_name** | string  | - | 
| **data_format** | string  | - | 
| **database_routing_type** | string  | - | 
| **id** | string  | The ID of the Kusto EventHub Data Connection. | 