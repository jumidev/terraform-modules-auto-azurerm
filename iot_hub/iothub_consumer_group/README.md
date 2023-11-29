# azurerm_iothub_consumer_group

Manages a Consumer Group within an IotHub

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of this Consumer Group. Changing this forces a new resource to be created. | 
| **iothub_name** | string | True | -  |  -  | The name of the IoT Hub. Changing this forces a new resource to be created. | 
| **eventhub_endpoint_name** | string | True | -  |  -  | The name of the Event Hub-compatible endpoint in the IoT hub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group that contains the IoT hub. Changing this forces a new resource to be created. | 

