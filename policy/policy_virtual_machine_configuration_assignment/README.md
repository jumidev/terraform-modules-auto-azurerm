# azurerm_policy_virtual_machine_configuration_assignment

Applies a Guest Configuration Policy to a Virtual Machine.~> **NOTE:** You can create Guest Configuration Policies without defining a `azurerm_virtual_machine_extension` resource, however the policies will not be executed until a `azurerm_virtual_machine_extension` has been provisioned to the virtual machine.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "policy/policy_virtual_machine_configuration_assignment"   
}

inputs = {
   name = "The name of the Guest Configuration that will be assigned in this Guest Configur..."   
   location = "${location}"   
   # virtual_machine_id → set in tfstate_inputs
   configuration = {
   }
   
}

tfstate_inputs = {
   virtual_machine_id = "path/to/virtual_machine_component:id"   
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
| **name** | string |  The name of the Guest Configuration that will be assigned in this Guest Configuration Assignment. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created. | 
| **virtual_machine_id** | string |  The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created. | 
| **configuration** | [block](#configuration-block-structure) |  A `configuration` block. | 

### `configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `assignment_type` | string | No | - | The assignment type for the Guest Configuration Assignment. Possible values are 'Audit', 'ApplyAndAutoCorrect', 'ApplyAndMonitor' and 'DeployAndAutoCorrect'. |
| `content_hash` | string | No | - | The content hash for the Guest Configuration package. |
| `content_uri` | string | No | - | The content URI where the Guest Configuration package is stored. |
| `parameter` | [block](#parameter-block-structure) | No | - | One or more 'parameter' blocks which define what configuration parameters and values against. |
| `version` | string | No | - | The version of the Guest Configuration that will be assigned in this Guest Configuration Assignment. |

### `parameter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the configuration parameter to check. |
| `value` | string | Yes | - | The value to check the configuration parameter with. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Policy Virtual Machine Configuration Assignment. | 

Additionally, all variables are provided as outputs.
