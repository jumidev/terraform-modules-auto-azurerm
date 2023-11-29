# azurerm_iot_time_series_insights_event_source_eventhub

Manages an Azure IoT Time Series Insights EventHub Event Source.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Azure IoT Time Series Insights EventHub Event Source. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.environment_id** | string | True | -  |  -  | Specifies the id of the IoT Time Series Insights Environment that the Event Source should be associated with. Changing this forces a new resource to created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | True | -  |  -  | Specifies the name of the EventHub which will be associated with this resource. | 
| **var.consumer_group_name** | string | True | -  |  -  | Specifies the name of the EventHub Consumer Group that holds the partitions from which events will be read. | 
| **var.event_source_resource_id** | string | True | -  |  -  | Specifies the resource id where events will be coming from. | 
| **var.namespace_name** | string | True | -  |  -  | Specifies the EventHub Namespace name. | 
| **var.shared_access_key_name** | string | True | -  |  -  | Specifies the name of the Shared Access key that grants the Event Source access to the EventHub. | 
| **var.shared_access_key** | string | True | -  |  -  | Specifies the value of the Shared Access Policy key that grants the Time Series Insights service read access to the EventHub. | 
| **var.timestamp_property_name** | string | False | -  |  -  | Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **environment_id** | string  | - | 
| **location** | string  | - | 
| **eventhub_name** | string  | - | 
| **consumer_group_name** | string  | - | 
| **event_source_resource_id** | string  | - | 
| **namespace_name** | string  | - | 
| **shared_access_key_name** | string  | - | 
| **shared_access_key** | string  | - | 
| **timestamp_property_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the IoT Time Series Insights EventHub Event Source. | 