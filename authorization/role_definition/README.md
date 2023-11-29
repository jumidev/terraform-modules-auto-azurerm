# azurerm_role_definition

Manages a custom Role Definition, used to assign Roles to Users/Principals. See ['Understand role definitions'](https://docs.microsoft.com/azure/role-based-access-control/role-definitions) in the Azure documentation for more details.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.role_definition_id** | string | False | A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **var.name** | string | True | The name of the Role Definition. | 
| **var.scope** | string | True | The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. It is recommended to use the first entry of the `assignable_scopes`. Changing this forces a new resource to be created. | 
| **var.description** | string | False | A description of the Role Definition. | 
| **var.permissions** | block | False | A `permissions` block. | 
| **var.assignable_scopes** | list | False | One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **role_definition_id** | string  | - | 
| **name** | string  | - | 
| **scope** | string  | - | 
| **description** | string  | - | 
| **permissions** | block  | - | 
| **assignable_scopes** | list  | - | 
| **id** | string  | This ID is specific to Terraform - and is of the format `{roleDefinitionId}|{scope}`. | 
| **role_definition_id** | string  | The Role Definition ID. Changing this forces a new resource to be created. | 
| **role_definition_resource_id** | string  | The Azure Resource Manager ID for the resource. | 