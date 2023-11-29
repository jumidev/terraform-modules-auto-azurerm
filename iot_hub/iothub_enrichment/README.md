# azurerm_iothub_enrichment

Manages an IotHub Enrichment~> **NOTE:** Enrichment can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_enrichment` resources - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **iothub_name** | string | True | -  |  -  | The IoTHub name of the enrichment. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the IoTHub resource is created. Changing this forces a new resource to be created. | 
| **key** | string | True | -  |  -  | The key of the enrichment. Changing this forces a new resource to be created. | 
| **value** | string | True | -  |  -  | The value of the enrichment. Value can be any static string, the name of the IoT hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`) | 
| **endpoint_names** | string | True | -  |  -  | The list of endpoints which will be enriched. | 

