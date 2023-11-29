# azurerm_kusto_eventhub_data_connection

Manages a Kusto (also known as Azure Data Explorer) EventHub Data Connection

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Kusto EventHub Data Connection to create. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **cluster_name** | string | True | -  |  -  | Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created. | 
| **compression** | string | False | `None`  |  -  | Specifies compression type for the connection. Allowed values: `GZip` and `None`. Defaults to `None`. Changing this forces a new resource to be created. | 
| **database_name** | string | True | -  |  -  | Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created. | 
| **eventhub_id** | string | True | -  |  -  | Specifies the resource id of the EventHub this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **event_system_properties** | string | False | -  |  -  | Specifies a list of system properties for the Event Hub. | 
| **consumer_group** | string | True | -  |  -  | Specifies the EventHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **table_name** | string | False | -  |  -  | Specifies the target table name used for the message ingestion. Table must exist before resource is created. | 
| **identity_id** | string | False | -  |  -  | The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub. | 
| **mapping_rule_name** | string | False | -  |  -  | Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. | 
| **data_format** | string | False | -  |  -  | Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSVE`, `TSV`, `TXT`, and `W3CLOGFILE`. | 
| **database_routing_type** | string | False | `Single`  |  -  | Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`. | 

