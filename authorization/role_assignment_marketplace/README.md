# azurerm_role_assignment_marketplace

Assigns a given Principal (User or Group) to a given Role in a Private Azure Marketplace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **principal_id** | string | True | -  |  -  | The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created. | 
| **name** | string | False | -  |  -  | A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **role_definition_id** | string | False | -  |  -  | The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with `role_definition_name`. | 
| **role_definition_name** | string | False | -  |  -  | The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with `role_definition_id`. | 
| **condition** | string | False | -  |  -  | The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created. | 
| **condition_version** | string | False | -  |  `1.0`, `2.0`  | The version of the condition. Possible values are `1.0` or `2.0`. Changing this forces a new resource to be created. | 
| **delegated_managed_identity_resource_id** | string | False | -  |  -  | The delegated Azure Resource ID which contains a Managed Identity. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | The description for this Role Assignment. Changing this forces a new resource to be created. | 
| **skip_service_principal_aad_check** | bool | False | `False`  |  -  | If the `principal_id` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principal_id` is a `Service Principal` identity. Defaults to `false`. Changing this forces a new resource to be created. | 

