# azurerm_iot_time_series_insights_event_source_iothub

Manages an Azure IoT Time Series Insights IoTHub Event Source.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Azure IoT Time Series Insights IoTHub Event Source. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.environment_id** | string | True | Specifies the id of the IoT Time Series Insights Environment that the Event Source should be associated with. Changing this forces a new resource to created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.iothub_name** | string | True | Specifies the name of the IotHub which will be associated with this resource. | 
| **var.consumer_group_name** | string | True | Specifies the name of the IotHub Consumer Group that holds the partitions from which events will be read. | 
| **var.event_source_resource_id** | string | True | Specifies the resource id where events will be coming from. | 
| **var.shared_access_key_name** | string | True | Specifies the name of the Shared Access key that grants the Event Source access to the IotHub. | 
| **var.shared_access_key** | string | True | Specifies the value of the Shared Access Policy key that grants the Time Series Insights service read access to the IotHub. | 
| **var.timestamp_property_name** | string | False | Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **environment_id** | string  | - | 
| **location** | string  | - | 
| **iothub_name** | string  | - | 
| **consumer_group_name** | string  | - | 
| **event_source_resource_id** | string  | - | 
| **shared_access_key_name** | string  | - | 
| **shared_access_key** | string  | - | 
| **timestamp_property_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the IoT Time Series Insights IoTHub Event Source. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "time_series_insights/iot_time_series_insights_event_source_iothub" 
}

inputs = {
   name = "name of iot_time_series_insights_event_source_iothub" 
   environment_id = "environment_id of iot_time_series_insights_event_source_iothub" 
   location = "${location}" 
   iothub_name = "iothub_name of iot_time_series_insights_event_source_iothub" 
   consumer_group_name = "consumer_group_name of iot_time_series_insights_event_source_iothub" 
   event_source_resource_id = "event_source_resource_id of iot_time_series_insights_event_source_iothub" 
   shared_access_key_name = "shared_access_key_name of iot_time_series_insights_event_source_iothub" 
   shared_access_key = "shared_access_key of iot_time_series_insights_event_source_iothub" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```