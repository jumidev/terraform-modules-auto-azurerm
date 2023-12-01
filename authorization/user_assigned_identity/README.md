# azurerm_user_assigned_identity

Manages a User Assigned Identity.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "authorization/user_assigned_identity" 
}

inputs = {
   location = "${location}" 
   name = "name of user_assigned_identity" 
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
| **location** | string |  The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created. | 
| **name** | string |  Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the User Assigned Identity. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the User Assigned Identity. | 
| **client_id** | string | No  | The ID of the app associated with the Identity. | 
| **principal_id** | string | No  | The ID of the Service Principal object associated with the created Identity. | 
| **tenant_id** | string | No  | The ID of the Tenant which the Identity belongs to. | 

Additionally, all variables are provided as outputs.
