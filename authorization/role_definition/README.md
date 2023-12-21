# azurerm_role_definition

Manages a custom Role Definition, used to assign Roles to Users/Principals. See ['Understand role definitions'](https://docs.microsoft.com/azure/role-based-access-control/role-definitions) in the Azure documentation for more details.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "authorization/role_definition"   
}

inputs = {
   name = "The name of the Role Definition"   
   scope = "The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6..."   
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
| **name** | string |  The name of the Role Definition. | 
| **scope** | string |  The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. It is recommended to use the first entry of the `assignable_scopes`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **role_definition_id** | string |  A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **description** | string |  A description of the Role Definition. | 
| **permissions** | [block](#permissions-block-structure) |  A `permissions` block. | 
| **assignable_scopes** | string |  One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. | 

### `permissions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `actions` | string | No | - | One or more Allowed Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details. |
| `data_actions` | string | No | - | One or more Allowed Data Actions, such as '*', 'Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details. |
| `not_actions` | string | No | - | One or more Disallowed Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details. |
| `not_data_actions` | string | No | - | One or more Disallowed Data Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | This ID is specific to Terraform - and is of the format `{roleDefinitionId}|{scope}`. | 
| **role_definition_id** | string | No  | The Role Definition ID. Changing this forces a new resource to be created. | 
| **role_definition_resource_id** | string | No  | The Azure Resource Manager ID for the resource. | 

Additionally, all variables are provided as outputs.
