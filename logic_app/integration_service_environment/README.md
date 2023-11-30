# azurerm_integration_service_environment

Manages private and isolated Logic App instances within an Azure virtual network.!> **NOTE:** The `azurerm_integration_service_environment` resource is deprecated and will be removed in v4.0 of the Azure Provider. The underlying Azure Service is being retired on 2024-08-31 and new instances cannot be provisioned by default after 2022-11-01. More information on the retirement and how to migrate to [Logic Apps Standard](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/logic_app_standard) [can be found here](https://aka.ms/isedeprecation).

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Integration Service Environment. Changing this forces a new Integration Service Environment to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Integration Service Environment should exist. Changing this forces a new Integration Service Environment to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Integration Service Environment should exist. Changing this forces a new Integration Service Environment to be created. | 
| **var.sku_name** | string | False | `Developer_0`  |  `Developer_0`, `Premium_0`, `Premium_1`, `Premium_2`, `Premium_3`, `Premium_4`, `Premium_5`, `Premium_6`, `Premium_7`, `Premium_8`, `Premium_9`, `Premium_10`  |  The SKU name and capacity of the Integration Service Environment. Possible values are `Developer_0`, `Premium_0`, `Premium_1`, `Premium_2`, `Premium_3`, `Premium_4`, `Premium_5`, `Premium_6`, `Premium_7`, `Premium_8`, `Premium_9` and `Premium_10`. Defaults to `Developer_0`. | 
| **var.access_endpoint_type** | string | True | -  |  -  |  The type of access endpoint to use for the Integration Service Environment. Possible Values are `Internal` and `External`. Changing this forces a new Integration Service Environment to be created. | 
| **var.virtual_network_subnet_ids** | list | True | -  |  -  |  A list of virtual network subnet ids to be used by Integration Service Environment. Exactly four distinct ids to `/27` subnets must be provided. Changing this forces a new Integration Service Environment to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Integration Service Environment. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku_name** | string  | - | 
| **access_endpoint_type** | string  | - | 
| **virtual_network_subnet_ids** | list  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Integration Service Environment. | 
| **connector_endpoint_ip_addresses** | string  | The list of access endpoint IP addresses of connector. | 
| **connector_outbound_ip_addresses** | string  | The list of outgoing IP addresses of connector. | 
| **workflow_endpoint_ip_addresses** | string  | The list of access endpoint IP addresses of workflow. | 
| **workflow_outbound_ip_addresses** | string  | The list of outgoing IP addresses of workflow. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/integration_service_environment" 
}

inputs = {
   name = "name of integration_service_environment" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   access_endpoint_type = "access_endpoint_type of integration_service_environment" 
   virtual_network_subnet_ids = "virtual_network_subnet_ids of integration_service_environment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```