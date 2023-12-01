# azurerm_stream_analytics_output_servicebus_topic

Manages a Stream Analytics Output to a ServiceBus Topic.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_output_servicebus_topic" 
}

inputs = {
   name = "name of stream_analytics_output_servicebus_topic" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_output_servicebus_topic" 
   topic_name = "topic_name of stream_analytics_output_servicebus_topic" 
   servicebus_namespace = "servicebus_namespace of stream_analytics_output_servicebus_topic" 
   serialization = {
      example_serialization = {
         type = "..."   
      }
  
   }
 
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
| **topic_name** | string |  The name of the Service Bus Topic. | 
| **servicebus_namespace** | string |  The namespace that is associated with the desired Event Hub, Service Bus Topic, Service Bus Topic, etc. | 
| **serialization** | [block](#serialization-block-structure) |  A `serialization` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **shared_access_policy_key** | string |  -  |  -  |  The shared access policy key for the specified shared access policy. Required if `authentication_mode` is `ConnectionString`. | 
| **shared_access_policy_name** | string |  -  |  -  |  The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required if `authentication_mode` is `ConnectionString`. | 
| **property_columns** | list |  -  |  -  |  A list of property columns to add to the Service Bus Topic output. | 
| **authentication_mode** | string |  `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **system_property_columns** | string |  -  |  -  |  A key-value pair of system property columns that will be attached to the outgoing messages for the Service Bus Topic Output. | 

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
| **id** | string | No  | The ID of the Stream Analytics Output ServiceBus Topic. | 

Additionally, all variables are provided as outputs.
