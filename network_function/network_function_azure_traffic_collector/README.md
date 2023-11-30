# azurerm_network_function_azure_traffic_collector

Manages a Network Function Azure Traffic Collector.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network_function/network_function_azure_traffic_collector" 
}

inputs = {
   name = "name of network_function_azure_traffic_collector" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **var.name** | string |  Specifies the name which should be used for this Network Function Azure Traffic Collector. Changing this forces a new Network Function Azure Traffic Collector to be created. | 
| **var.resource_group_name** | string |  Specifies the name of the Resource Group where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created. | 
| **var.location** | string |  Specifies the Azure Region where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags which should be assigned to the Network Function Azure Traffic Collector. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Function Azure Traffic Collector. | 
| **collector_policy_ids** | string | No  | The list of Resource IDs of collector policies. | 
| **virtual_hub_id** | string | No  | The Resource ID of virtual hub. | 

Additionally, all variables are provided as outputs.
