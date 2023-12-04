# azurerm_kusto_iothub_data_connection

Manages a Kusto (also known as Azure Data Explorer) IotHub Data Connection

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_iothub_data_connection" 
}

inputs = {
   name = "name of kusto_iothub_data_connection" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   cluster_name = "cluster_name of kusto_iothub_data_connection" 
   database_name = "database_name of kusto_iothub_data_connection" 
   # iothub_id → set in tfstate_inputs
   consumer_group = "consumer_group of kusto_iothub_data_connection" 
   shared_access_policy_name = "shared_access_policy_name of kusto_iothub_data_connection" 
}

tfstate_inputs = {
   iothub_id = "path/to/iothub_component:id" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Kusto IotHub Data Connection to create. Changing this forces a new resource to be created. | 
| **location** | string |  The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **cluster_name** | string |  Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created. | 
| **database_name** | string |  Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created. | 
| **iothub_id** | string |  Specifies the resource id of the IotHub this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **consumer_group** | string |  Specifies the IotHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **shared_access_policy_name** | string |  Specifies the IotHub Shared Access Policy this data connection will use for ingestion, which must have read permission. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **event_system_properties** | string |  -  |  `message-id`, `sequence-number`, `to`, `absolute-expiry-time`, `iothub-enqueuedtime`, `correlation-id`, `user-id`, `iothub-ack`, `iothub-connection-device-id`, `iothub-connection-auth-generation-id`, `iothub-connection-auth-method`  |  Specifies the System Properties that each IoT Hub message should contain. Changing this forces a new resource to be created. Possible values are `message-id`, `sequence-number`, `to`, `absolute-expiry-time`, `iothub-enqueuedtime`, `correlation-id`, `user-id`, `iothub-ack`, `iothub-connection-device-id`, `iothub-connection-auth-generation-id` and `iothub-connection-auth-method`. | 
| **table_name** | string |  -  |  -  |  Specifies the target table name used for the message ingestion. Table must exist before resource is created. Changing this forces a new resource to be created. | 
| **mapping_rule_name** | string |  -  |  -  |  Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. Changing this forces a new resource to be created. | 
| **data_format** | string |  -  |  -  |  Specifies the data format of the IoTHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. Changing this forces a new resource to be created. | 
| **database_routing_type** | string |  `Single`  |  -  |  Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kusto IotHub Data Connection. | 

Additionally, all variables are provided as outputs.
