# azurerm_iothub_enrichment

Manages an IotHub Enrichment~> **NOTE:** Enrichment can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_enrichment` resources - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_enrichment" 
}

inputs = {
   # iothub_name → set in tfstate_inputs
   resource_group_name = "${resource_group}" 
   key = "key of iothub_enrichment" 
   value = "value of iothub_enrichment" 
   endpoint_names = "endpoint_names of iothub_enrichment" 
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
| **iothub_name** | string |  The IoTHub name of the enrichment. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group under which the IoTHub resource is created. Changing this forces a new resource to be created. | 
| **key** | string |  The key of the enrichment. Changing this forces a new resource to be created. | 
| **value** | string |  The value of the enrichment. Value can be any static string, the name of the IoT hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`) | 
| **endpoint_names** | string |  The list of endpoints which will be enriched. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Enrichment. | 

Additionally, all variables are provided as outputs.
