# azurerm_network_manager

Manages a Network Managers.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name which should be used for this Network Managers. Changing this forces a new Network Managers to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group where the Network Managers should exist. Changing this forces a new Network Managers to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Network Managers should exist. Changing this forces a new resource to be created. | 
| **var.scope** | block | True | -  |  A `scope` block. | 
| **var.scope_accesses** | string | True | `Connectivity`, `SecurityAdmin`  |  A list of configuration deployment type. Possible values are `Connectivity` and `SecurityAdmin`, corresponds to if Connectivity Configuration and Security Admin Configuration is allowed for the Network Manager. | 
| **var.description** | string | False | -  |  A description of the network manager. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Network Managers. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **scope** | block  | - | 
| **scope_accesses** | string  | - | 
| **description** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Network Managers. | 
| **cross_tenant_scopes** | block  | A `cross_tenant_scopes` block. | 
| **management_groups** | string  | List of management groups. | 
| **subscriptions** | string  | List of subscriptions. | 
| **tenant_id** | string  | Tenant ID. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager" 
}

inputs = {
   name = "name of network_manager" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   scope = "scope of network_manager" 
   scope_accesses = "scope_accesses of network_manager" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```