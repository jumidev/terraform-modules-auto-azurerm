# azurerm_stream_analytics_output_eventhub

Manages a Stream Analytics Output to an EventHub.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_output_eventhub" 
}

inputs = {
   name = "name of stream_analytics_output_eventhub" 
   resource_group_name = "${resource_group}" 
   # stream_analytics_job_name → set in tfstate_inputs
   # eventhub_name → set in tfstate_inputs
   servicebus_namespace = "servicebus_namespace of stream_analytics_output_eventhub" 
   serialization = {
      example_serialization = {
         type = "..."   
      }
  
   }
 
}

tfstate_inputs = {
   stream_analytics_job_name = "path/to/stream_analytics_job_component:name" 
   eventhub_name = "path/to/eventhub_component:name" 
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
| **name** | string |  The name of the Stream Output. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **eventhub_name** | string |  The name of the Event Hub. | 
| **servicebus_namespace** | string |  The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. | 
| **serialization** | [block](#serialization-block-structure) |  A `serialization` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **shared_access_policy_key** | string |  -  |  -  |  The shared access policy key for the specified shared access policy. Required when `authentication_mode` is set to `ConnectionString`. | 
| **shared_access_policy_name** | string |  -  |  -  |  The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authentication_mode` is set to `ConnectionString`. | 
| **property_columns** | list |  -  |  -  |  A list of property columns to add to the Event Hub output. | 
| **authentication_mode** | string |  `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **partition_key** | string |  -  |  -  |  The column that is used for the Event Hub partition key. | 

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
