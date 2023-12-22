# azurerm_network_manager

Manages a Network Managers.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_manager"   
}

inputs = {
   name = "Specifies the name which should be used for this Network Managers..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   scope = {
      # management_group_ids → (optional) set in component_inputs
      # subscription_ids → (optional) set in component_inputs
   }
   
   scope_accesses = "A list of configuration deployment type"   
}

component_inputs = {
   scope.management_group_ids = "path/to/management_group_component:id"   
   scope.subscription_ids = "path/to/subscription_component:id"   
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
| **name** | string |  -  |  Specifies the name which should be used for this Network Managers. Changing this forces a new Network Managers to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the Resource Group where the Network Managers should exist. Changing this forces a new Network Managers to be created. | 
| **location** | string |  -  |  Specifies the Azure Region where the Network Managers should exist. Changing this forces a new resource to be created. | 
| **scope** | [block](#scope-block-structure) |  -  |  A `scope` block. | 
| **scope_accesses** | list |  `Connectivity`, `SecurityAdmin`  |  A list of configuration deployment type. Possible values are `Connectivity` and `SecurityAdmin`, corresponds to if Connectivity Configuration and Security Admin Configuration is allowed for the Network Manager. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description of the network manager. | 
| **tags** | map |  A mapping of tags which should be assigned to the Network Managers. | 

### `scope` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `management_group_ids` | list | No | - | A list of management group IDs. |
| `subscription_ids` | list | No | - | A list of subscription IDs. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Managers. | 
| **cross_tenant_scopes** | block | No  | A `cross_tenant_scopes` block. | 
| **management_groups** | string | No  | List of management groups. | 
| **subscriptions** | string | No  | List of subscriptions. | 
| **tenant_id** | string | No  | Tenant ID. | 

Additionally, all variables are provided as outputs.
