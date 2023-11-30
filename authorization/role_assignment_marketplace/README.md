# azurerm_role_assignment_marketplace

Assigns a given Principal (User or Group) to a given Role in a Private Azure Marketplace.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "authorization/role_assignment_marketplace" 
}

inputs = {
   principal_id = "principal_id of role_assignment_marketplace" 
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
| **var.principal_id** | string  The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string  -  |  -  |  A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **var.role_definition_id** | string  -  |  -  |  The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with `role_definition_name`. | 
| **var.role_definition_name** | string  -  |  -  |  The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with `role_definition_id`. | 
| **var.condition** | string  -  |  -  |  The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created. | 
| **var.condition_version** | string  -  |  `1.0`, `2.0`  |  The version of the condition. Possible values are `1.0` or `2.0`. Changing this forces a new resource to be created. | 
| **var.delegated_managed_identity_resource_id** | string  -  |  -  |  The delegated Azure Resource ID which contains a Managed Identity. Changing this forces a new resource to be created. | 
| **var.description** | string  -  |  -  |  The description for this Role Assignment. Changing this forces a new resource to be created. | 
| **var.skip_service_principal_aad_check** | bool  `False`  |  -  |  If the `principal_id` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principal_id` is a `Service Principal` identity. Defaults to `false`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Role Assignment ID. | 
| **principal_type** | string | No  | The type of the `principal_id`, e.g. User, Group, Service Principal, Application, etc. | 

Additionally, all variables are provided as outputs.
