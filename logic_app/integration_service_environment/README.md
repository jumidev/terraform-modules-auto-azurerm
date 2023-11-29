# azurerm_integration_service_environment

Manages private and isolated Logic App instances within an Azure virtual network.!> **NOTE:** The `azurerm_integration_service_environment` resource is deprecated and will be removed in v4.0 of the Azure Provider. The underlying Azure Service is being retired on 2024-08-31 and new instances cannot be provisioned by default after 2022-11-01. More information on the retirement and how to migrate to [Logic Apps Standard](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/logic_app_standard) [can be found here](https://aka.ms/isedeprecation).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Integration Service Environment. Changing this forces a new Integration Service Environment to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Integration Service Environment should exist. Changing this forces a new Integration Service Environment to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Integration Service Environment should exist. Changing this forces a new Integration Service Environment to be created. | 
| **sku_name** | string | False | `Developer_0`  |  `Developer_0`, `Premium_0`, `Premium_1`, `Premium_2`, `Premium_3`, `Premium_4`, `Premium_5`, `Premium_6`, `Premium_7`, `Premium_8`, `Premium_9`, `Premium_10`  | The SKU name and capacity of the Integration Service Environment. Possible values are `Developer_0`, `Premium_0`, `Premium_1`, `Premium_2`, `Premium_3`, `Premium_4`, `Premium_5`, `Premium_6`, `Premium_7`, `Premium_8`, `Premium_9` and `Premium_10`. Defaults to `Developer_0`. | 
| **access_endpoint_type** | string | True | -  |  -  | The type of access endpoint to use for the Integration Service Environment. Possible Values are `Internal` and `External`. Changing this forces a new Integration Service Environment to be created. | 
| **virtual_network_subnet_ids** | list | True | -  |  -  | A list of virtual network subnet ids to be used by Integration Service Environment. Exactly four distinct ids to `/27` subnets must be provided. Changing this forces a new Integration Service Environment to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Integration Service Environment. | 

