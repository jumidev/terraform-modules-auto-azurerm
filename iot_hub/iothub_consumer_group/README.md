# azurerm_iothub_consumer_group

Manages a Consumer Group within an IotHub

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_consumer_group" 
}

inputs = {
   name = "name of iothub_consumer_group" 
   iothub_name = "iothub_name of iothub_consumer_group" 
   eventhub_endpoint_name = "eventhub_endpoint_name of iothub_consumer_group" 
   resource_group_name = "${resource_group}" 
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
| **var.name** | string |  The name of this Consumer Group. Changing this forces a new resource to be created. | 
| **var.iothub_name** | string |  The name of the IoT Hub. Changing this forces a new resource to be created. | 
| **var.eventhub_endpoint_name** | string |  The name of the Event Hub-compatible endpoint in the IoT hub. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group that contains the IoT hub. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Consumer Group. | 

Additionally, all variables are provided as outputs.
