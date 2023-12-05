# azurerm_security_center_subscription_pricing

Manages the Pricing Tier for Azure Security Center in the current subscription.~> **NOTE:** Deletion of this resource will reset the pricing tier to `Free`

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "security_center/security_center_subscription_pricing"   
}

inputs = {
   tier = "The pricing tier to use"   
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
| **tier** | string |  `Free`, `Standard`  |  The pricing tier to use. Possible values are `Free` and `Standard`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **resource_type** | string |  `VirtualMachines`  |  `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs`, `CloudPosture`  |  The resource type this setting affects. Possible values are `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs` and `CloudPosture`. Defaults to `VirtualMachines` | 
| **subplan** | string |  -  |  -  |  Resource type pricing subplan. Contact your MSFT representative for possible values. | 
| **extension** | [block](#extension-block-structure) |  -  |  -  |  One or more `extension` blocks. | 

### `extension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of extension. |
| `additional_extension_properties` | string | No | - | Key/Value pairs that are required for some extensions. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The subscription pricing ID. | 

Additionally, all variables are provided as outputs.
