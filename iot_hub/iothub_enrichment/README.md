# azurerm_iothub_enrichment

Manages an IotHub Enrichment~> **NOTE:** Enrichment can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_enrichment` resources - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.iothub_name** | string | True | The IoTHub name of the enrichment. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group under which the IoTHub resource is created. Changing this forces a new resource to be created. | 
| **var.key** | string | True | The key of the enrichment. Changing this forces a new resource to be created. | 
| **var.value** | string | True | The value of the enrichment. Value can be any static string, the name of the IoT hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`) | 
| **var.endpoint_names** | string | True | The list of endpoints which will be enriched. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **iothub_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **key** | string  | - | 
| **value** | string  | - | 
| **endpoint_names** | string  | - | 
| **id** | string  | The ID of the IoTHub Enrichment. | 