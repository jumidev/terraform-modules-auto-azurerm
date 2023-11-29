# azurerm_network_manager_deployment

Manages a Network Manager Deployment.~> **NOTE on Virtual Network Peering:** Using Network Manager Deployment to deploy Connectivity Configuration may modify or delete existing Virtual Network Peering. At this time you should not use [Network Peering resource](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) in conjunction with Network Manager Deployment. Doing so may cause a conflict of Peering configurations.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **network_manager_id** | string | True | -  |  -  | Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created. | 
| **location** | string | True | -  |  -  | Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created. | 
| **scope_access** | string | True | -  |  `Connectivity`, `SecurityAdmin`  | Specifies the configuration deployment type. Possible values are `Connectivity` and `SecurityAdmin`. Changing this forces a new Network Manager Deployment to be created. | 
| **configuration_ids** | list | True | -  |  -  | A list of Network Manager Configuration IDs which should be aligned with `scope_access`. | 
| **triggers** | string | False | -  |  -  | A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules. | 

