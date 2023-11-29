# azurerm_iot_time_series_insights_event_source_iothub

Manages an Azure IoT Time Series Insights IoTHub Event Source.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Azure IoT Time Series Insights IoTHub Event Source. Changing this forces a new resource to be created. Must be globally unique. | 
| **environment_id** | string | True | -  |  -  | Specifies the id of the IoT Time Series Insights Environment that the Event Source should be associated with. Changing this forces a new resource to created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **iothub_name** | string | True | -  |  -  | Specifies the name of the IotHub which will be associated with this resource. | 
| **consumer_group_name** | string | True | -  |  -  | Specifies the name of the IotHub Consumer Group that holds the partitions from which events will be read. | 
| **event_source_resource_id** | string | True | -  |  -  | Specifies the resource id where events will be coming from. | 
| **shared_access_key_name** | string | True | -  |  -  | Specifies the name of the Shared Access key that grants the Event Source access to the IotHub. | 
| **shared_access_key** | string | True | -  |  -  | Specifies the value of the Shared Access Policy key that grants the Time Series Insights service read access to the IotHub. | 
| **timestamp_property_name** | string | False | -  |  -  | Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

