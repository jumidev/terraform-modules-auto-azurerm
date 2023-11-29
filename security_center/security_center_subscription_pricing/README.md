# azurerm_security_center_subscription_pricing

Manages the Pricing Tier for Azure Security Center in the current subscription.~> **NOTE:** Deletion of this resource will reset the pricing tier to `Free`

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **tier** | string | True | -  |  `Free`, `Standard`  | The pricing tier to use. Possible values are `Free` and `Standard`. | 
| **resource_type** | string | False | `VirtualMachines`  |  `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs`, `CloudPosture`  | The resource type this setting affects. Possible values are `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs` and `CloudPosture`. Defaults to `VirtualMachines` | 
| **subplan** | string | False | -  |  -  | Resource type pricing subplan. Contact your MSFT representative for possible values. | 
| **extension** | block | False | -  |  -  | One or more `extension` blocks. | 

