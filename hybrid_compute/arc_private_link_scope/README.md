# azurerm_arc_private_link_scope

Manages an Azure Arc Private Link Scope.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "hybrid_compute/arc_private_link_scope"   
}

inputs = {
   location = "${location}"   
   name = "name of arc_private_link_scope"   
   resource_group_name = "${resource_group}"   
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
| **location** | string |  The Azure Region where the Arc Private Link Scope should exist. Changing this forces a new Azure Arc Private Link Scope to be created. | 
| **name** | string |  The name which should be used for the Azure Arc Private Link Scope. Changing this forces a new Azure Arc Private Link Scope to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Azure Arc Private Link Scope should exist. Changing this forces a new Azure Arc Private Link Scope to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **public_network_access_enabled** | bool |  `False`  |  `true`, `false`  |  Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints. Defaults to `false`. Possible values are `true` and `false`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Azure Arc Private Link Scope. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Arc Private Link Scope. | 

Additionally, all variables are provided as outputs.
