# azurerm_iothub_consumer_group

Manages a Consumer Group within an IotHub

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of this Consumer Group. Changing this forces a new resource to be created. | 
| **var.iothub_name** | string | True | -  |  -  | The name of the IoT Hub. Changing this forces a new resource to be created. | 
| **var.eventhub_endpoint_name** | string | True | -  |  -  | The name of the Event Hub-compatible endpoint in the IoT hub. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group that contains the IoT hub. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **iothub_name** | string  | - | 
| **eventhub_endpoint_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **id** | string  | The ID of the IoTHub Consumer Group. | 