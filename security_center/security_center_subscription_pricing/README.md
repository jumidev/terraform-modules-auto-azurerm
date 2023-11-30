# azurerm_security_center_subscription_pricing

Manages the Pricing Tier for Azure Security Center in the current subscription.~> **NOTE:** Deletion of this resource will reset the pricing tier to `Free`

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_subscription_pricing" 
}

inputs = {
   tier = "tier of security_center_subscription_pricing" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.tier** | string | True | -  |  `Free`, `Standard`  |  The pricing tier to use. Possible values are `Free` and `Standard`. | 
| **var.resource_type** | string | False | `VirtualMachines`  |  `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs`, `CloudPosture`  |  The resource type this setting affects. Possible values are `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs` and `CloudPosture`. Defaults to `VirtualMachines` | 
| **var.subplan** | string | False | -  |  -  |  Resource type pricing subplan. Contact your MSFT representative for possible values. | 
| **var.extension** | block | False | -  |  -  |  One or more `extension` blocks. | 

### `extension` block structure

> `name` (string): (REQUIRED) The name of extension.
> `additional_extension_properties` (string): Key/Value pairs that are required for some extensions.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The subscription pricing ID. | 

Additionally, all variables are provided as outputs.
