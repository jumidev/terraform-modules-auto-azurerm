# azurerm_security_center_subscription_pricing

Manages the Pricing Tier for Azure Security Center in the current subscription.~> **NOTE:** Deletion of this resource will reset the pricing tier to `Free`

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.tier** | string | True | -  |  `Free`, `Standard`  | The pricing tier to use. Possible values are `Free` and `Standard`. | 
| **var.resource_type** | string | False | `VirtualMachines`  |  `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs`, `CloudPosture`  | The resource type this setting affects. Possible values are `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs` and `CloudPosture`. Defaults to `VirtualMachines` | 
| **var.subplan** | string | False | -  |  -  | Resource type pricing subplan. Contact your MSFT representative for possible values. | 
| **var.extension** | block | False | -  |  -  | One or more `extension` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **tier** | string  | - | 
| **resource_type** | string  | - | 
| **subplan** | string  | - | 
| **extension** | block  | - | 
| **id** | string  | The subscription pricing ID. | 