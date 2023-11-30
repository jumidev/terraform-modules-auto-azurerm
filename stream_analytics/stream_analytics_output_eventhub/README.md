# azurerm_stream_analytics_output_eventhub

Manages a Stream Analytics Output to an EventHub.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_output_eventhub" 
}

inputs = {
   name = "name of stream_analytics_output_eventhub" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_output_eventhub" 
   eventhub_name = "eventhub_name of stream_analytics_output_eventhub" 
   servicebus_namespace = "servicebus_namespace of stream_analytics_output_eventhub" 
   serialization = "serialization of stream_analytics_output_eventhub" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Stream Output. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | -  |  -  |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | True | -  |  -  |  The name of the Event Hub. | 
| **var.servicebus_namespace** | string | True | -  |  -  |  The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. | 
| **var.shared_access_policy_key** | string | False | -  |  -  |  The shared access policy key for the specified shared access policy. Required when `authentication_mode` is set to `ConnectionString`. | 
| **var.shared_access_policy_name** | string | False | -  |  -  |  The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authentication_mode` is set to `ConnectionString`. | 
| **var.serialization** | block | True | -  |  -  |  A `serialization` block. | 
| **var.property_columns** | list | False | -  |  -  |  A list of property columns to add to the Event Hub output. | 
| **var.authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **var.partition_key** | string | False | -  |  -  |  The column that is used for the Event Hub partition key. | 

### `serialization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The serialization format used for outgoing data streams. Possible values are 'Avro', 'Csv', 'Json' and 'Parquet'. |
| `encoding` | string | No | - | The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'. |
| `field_delimiter` | string | No | - | The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'. |
| `format` | string | No | - | Specifies the format of the JSON the output will be written in. Possible values are 'Array' and 'LineSeparated'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output EventHub. | 

Additionally, all variables are provided as outputs.
