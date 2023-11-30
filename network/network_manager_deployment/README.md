# azurerm_network_manager_deployment

Manages a Network Manager Deployment.~> **NOTE on Virtual Network Peering:** Using Network Manager Deployment to deploy Connectivity Configuration may modify or delete existing Virtual Network Peering. At this time you should not use [Network Peering resource](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) in conjunction with Network Manager Deployment. Doing so may cause a conflict of Peering configurations.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_deployment" 
}

inputs = {
   network_manager_id = "network_manager_id of network_manager_deployment" 
   location = "${location}" 
   scope_access = "scope_access of network_manager_deployment" 
   configuration_ids = "configuration_ids of network_manager_deployment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.network_manager_id** | string | True | -  |  Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created. | 
| **var.location** | string | True | -  |  Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created. | 
| **var.scope_access** | string | True | `Connectivity`, `SecurityAdmin`  |  Specifies the configuration deployment type. Possible values are `Connectivity` and `SecurityAdmin`. Changing this forces a new Network Manager Deployment to be created. | 
| **var.configuration_ids** | list | True | -  |  A list of Network Manager Configuration IDs which should be aligned with `scope_access`. | 
| **var.triggers** | string | False | -  |  A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Admin Rule Collection. | 

Additionally, all variables are provided as outputs.
