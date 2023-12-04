# azurerm_network_manager_deployment

Manages a Network Manager Deployment.~> **NOTE on Virtual Network Peering:** Using Network Manager Deployment to deploy Connectivity Configuration may modify or delete existing Virtual Network Peering. At this time you should not use [Network Peering resource](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) in conjunction with Network Manager Deployment. Doing so may cause a conflict of Peering configurations.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_deployment" 
}

inputs = {
   # network_manager_id → set in tfstate_inputs
   location = "${location}" 
   scope_access = "scope_access of network_manager_deployment" 
   configuration_ids = "configuration_ids of network_manager_deployment" 
}

tfstate_inputs = {
   network_manager_id = "path/to/network_manager_component:id" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **network_manager_id** | string |  -  |  Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created. | 
| **location** | string |  -  |  Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created. | 
| **scope_access** | string |  `Connectivity`, `SecurityAdmin`  |  Specifies the configuration deployment type. Possible values are `Connectivity` and `SecurityAdmin`. Changing this forces a new Network Manager Deployment to be created. | 
| **configuration_ids** | list |  -  |  A list of Network Manager Configuration IDs which should be aligned with `scope_access`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **triggers** | string |  A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Admin Rule Collection. | 

Additionally, all variables are provided as outputs.
