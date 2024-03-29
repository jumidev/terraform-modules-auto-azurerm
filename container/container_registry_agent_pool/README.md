# azurerm_container_registry_agent_pool

Manages an Azure Container Registry Agent Pool.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/container_registry_agent_pool"   
}

inputs = {
   # container_registry_name → set in component_inputs
   location = "${location}"   
   name = "The name which should be used for this Azure Container Registry Agent Pool..."   
   resource_group_name = "${resource_group}"   
}

component_inputs = {
   container_registry_name = "path/to/container_registry_component:name"   
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
| **container_registry_name** | string |  Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **location** | string |  The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **name** | string |  The name which should be used for this Azure Container Registry Agent Pool. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **instance_count** | number |  `1`  |  -  |  VMSS instance count. Defaults to `1`. | 
| **tier** | string |  `S1`  |  `S1`, `S2`, `S3`, `I6`  |  Sets the VM your agent pool will run on. Valid values are: `S1` (2 vCPUs, 3 GiB RAM), `S2` (4 vCPUs, 8 GiB RAM), `S3` (8 vCPUs, 16 GiB RAM) or `I6` (64 vCPUs, 216 GiB RAM, Isolated). Defaults to `S1`. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **virtual_network_subnet_id** | string |  -  |  -  |  The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Azure Container Registry Agent Pool. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags which should be assigned to the Azure Container Registry Agent Pool. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Azure Container Registry Agent Pool. | 

Additionally, all variables are provided as outputs.
