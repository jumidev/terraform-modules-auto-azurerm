# azurerm_role_assignment



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "authorization/role_assignment"   
}
inputs = {
   scope = "The scope at which the Role Assignment applies to, such as `/subscriptions/0b1f6..."   
   principal_id = "The ID of the Principal (User, Group or Service Principal) to assign the Role De..."   
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
| **scope** | string |  The scope at which the Role Assignment applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`, or `/providers/Microsoft.Management/managementGroups/myMG`. Changing this forces a new resource to be created. | 
| **principal_id** | string |  The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created. ~> **NOTE:** The Principal ID is also known as the Object ID (ie not the "Application ID" for applications). | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **name** | string |  -  |  -  |  A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **role_definition_id** | string |  -  |  -  |  The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with `role_definition_name`. | 
| **role_definition_name** | string |  -  |  -  |  The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with `role_definition_id`. | 
| **principal_type** | string |  -  |  `User`, `Group`, `ServicePrincipal`  |  The type of the `principal_id`. Possible values are `User`, `Group` and `ServicePrincipal`. Changing this forces a new resource to be created. It is necessary to explicitly set this attribute when creating role assignments if the principal creating the assignment is constrained by ABAC rules that filters on the PrincipalType attribute. ~> **NOTE:** If one of `condition` or `condition_version` is set both fields must be present. | 
| **condition** | string |  -  |  -  |  The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created. | 
| **condition_version** | string |  -  |  `1.0`, `2.0`  |  The version of the condition. Possible values are `1.0` or `2.0`. Changing this forces a new resource to be created. | 
| **delegated_managed_identity_resource_id** | string |  -  |  -  |  The delegated Azure Resource Id which contains a Managed Identity. Changing this forces a new resource to be created. ~> **NOTE:** this field is only used in cross tenant scenario. | 
| **description** | string |  -  |  -  |  The description for this Role Assignment. Changing this forces a new resource to be created. | 
| **skip_service_principal_aad_check** | bool |  `False`  |  -  |  If the `principal_id` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principal_id` is a `Service Principal` identity. Defaults to `false`. ~> **NOTE:** If it is not a `Service Principal` identity it will cause the role assignment to fail. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **skip_service_principal_aad_check** | bool | No  | If the `principal_id` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principal_id` is a `Service Principal` identity. Defaults to `false`. ~> **NOTE:** If it is not a `Service Principal` identity it will cause the role assignment to fail. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Role Assignment ID. | 

Additionally, all variables are provided as outputs.
