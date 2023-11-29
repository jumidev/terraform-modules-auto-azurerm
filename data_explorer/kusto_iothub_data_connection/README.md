# azurerm_kusto_iothub_data_connection

Manages a Kusto (also known as Azure Data Explorer) IotHub Data Connection

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Kusto IotHub Data Connection to create. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **cluster_name** | string | True | -  |  -  | Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created. | 
| **database_name** | string | True | -  |  -  | Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created. | 
| **iothub_id** | string | True | -  |  -  | Specifies the resource id of the IotHub this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **consumer_group** | string | True | -  |  -  | Specifies the IotHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **shared_access_policy_name** | string | True | -  |  -  | Specifies the IotHub Shared Access Policy this data connection will use for ingestion, which must have read permission. Changing this forces a new resource to be created. | 
| **event_system_properties** | string | False | -  |  `message-id`, `sequence-number`, `to`, `absolute-expiry-time`, `iothub-enqueuedtime`, `correlation-id`, `user-id`, `iothub-ack`, `iothub-connection-device-id`, `iothub-connection-auth-generation-id`, `iothub-connection-auth-method`  | Specifies the System Properties that each IoT Hub message should contain. Changing this forces a new resource to be created. Possible values are `message-id`, `sequence-number`, `to`, `absolute-expiry-time`, `iothub-enqueuedtime`, `correlation-id`, `user-id`, `iothub-ack`, `iothub-connection-device-id`, `iothub-connection-auth-generation-id` and `iothub-connection-auth-method`. | 
| **table_name** | string | False | -  |  -  | Specifies the target table name used for the message ingestion. Table must exist before resource is created. Changing this forces a new resource to be created. | 
| **mapping_rule_name** | string | False | -  |  -  | Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. Changing this forces a new resource to be created. | 
| **data_format** | string | False | -  |  -  | Specifies the data format of the IoTHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. Changing this forces a new resource to be created. | 
| **database_routing_type** | string | False | `Single`  |  -  | Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`. | 

