# azurerm_container_registry_agent_pool

Manages an Azure Container Registry Agent Pool.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **container_registry_name** | string | True | -  |  -  | Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Azure Container Registry Agent Pool. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **instance_count** | int | False | `1`  |  -  | VMSS instance count. Defaults to `1`. | 
| **tier** | string | False | `S1`  |  `S1`, `S2`, `S3`, `I6`  | Sets the VM your agent pool will run on. Valid values are: `S1` (2 vCPUs, 3 GiB RAM), `S2` (4 vCPUs, 8 GiB RAM), `S3` (8 vCPUs, 16 GiB RAM) or `I6` (64 vCPUs, 216 GiB RAM, Isolated). Defaults to `S1`. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **virtual_network_subnet_id** | string | False | -  |  -  | The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Azure Container Registry Agent Pool. | 

