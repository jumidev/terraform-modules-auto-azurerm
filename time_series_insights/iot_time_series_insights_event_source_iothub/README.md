# azurerm_iot_time_series_insights_event_source_iothub

Manages an Azure IoT Time Series Insights IoTHub Event Source.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "time_series_insights/iot_time_series_insights_event_source_iothub"   
}

inputs = {
   name = "name of iot_time_series_insights_event_source_iothub"   
   environment_id = "environment_id of iot_time_series_insights_event_source_iothub"   
   location = "${location}"   
   # iothub_name → set in tfstate_inputs
   consumer_group_name = "consumer_group_name of iot_time_series_insights_event_source_iothub"   
   event_source_resource_id = "event_source_resource_id of iot_time_series_insights_event_source_iothub"   
   shared_access_key_name = "shared_access_key_name of iot_time_series_insights_event_source_iothub"   
   shared_access_key = "shared_access_key of iot_time_series_insights_event_source_iothub"   
}

tfstate_inputs = {
   iothub_name = "path/to/iothub_component:name"   
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
| **name** | string |  Specifies the name of the Azure IoT Time Series Insights IoTHub Event Source. Changing this forces a new resource to be created. Must be globally unique. | 
| **environment_id** | string |  Specifies the id of the IoT Time Series Insights Environment that the Event Source should be associated with. Changing this forces a new resource to created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **iothub_name** | string |  Specifies the name of the IotHub which will be associated with this resource. | 
| **consumer_group_name** | string |  Specifies the name of the IotHub Consumer Group that holds the partitions from which events will be read. | 
| **event_source_resource_id** | string |  Specifies the resource id where events will be coming from. | 
| **shared_access_key_name** | string |  Specifies the name of the Shared Access key that grants the Event Source access to the IotHub. | 
| **shared_access_key** | string |  Specifies the value of the Shared Access Policy key that grants the Time Series Insights service read access to the IotHub. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **timestamp_property_name** | string |  Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Time Series Insights IoTHub Event Source. | 

Additionally, all variables are provided as outputs.
