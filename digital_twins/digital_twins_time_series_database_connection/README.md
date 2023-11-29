# azurerm_digital_twins_time_series_database_connection

Manages a Digital Twins Time Series Database Connection.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Digital Twins Time Series Database Connection. Changing this forces a new resource to be created. | 
| **digital_twins_id** | string | True | -  |  -  | The ID of the Digital Twins. Changing this forces a new resource to be created. | 
| **eventhub_name** | string | True | -  |  -  | Name of the Event Hub. Changing this forces a new resource to be created. | 
| **eventhub_namespace_endpoint_uri** | string | True | -  |  -  | URI of the Event Hub Namespace. Changing this forces a new resource to be created. | 
| **eventhub_namespace_id** | string | True | -  |  -  | The ID of the Event Hub Namespace. Changing this forces a new resource to be created. | 
| **kusto_cluster_id** | string | True | -  |  -  | The ID of the Kusto Cluster. Changing this forces a new resource to be created. | 
| **kusto_cluster_uri** | string | True | -  |  -  | URI of the Kusto Cluster. Changing this forces a new resource to be created. | 
| **kusto_database_name** | string | True | -  |  -  | Name of the Kusto Database. Changing this forces a new resource to be created. | 
| **eventhub_consumer_group_name** | string | False | `$Default`  |  -  | Name of the Event Hub Consumer Group. Changing this forces a new resource to be created. Defaults to `$Default`. | 
| **kusto_table_name** | string | False | -  |  -  | Name of the Kusto Table. Changing this forces a new resource to be created. | 

