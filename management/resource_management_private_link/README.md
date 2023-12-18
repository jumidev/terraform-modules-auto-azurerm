# azurerm_resource_management_private_link

Manages a Resource Management Private Link to restrict access for managing resources in the tenant.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "management/resource_management_private_link"   
}

inputs = {
   name = "Specifies the name of this Resource Management Private Link..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `resource_management_private_link_association` 

If set, makes a **azurerm_resource_management_private_link_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `public_network_access_enabled` | bool | True | null |
| `name` | string | False | null |


Example component snippet:

```hcl
inputs = {
   resource_management_private_link_association = {
      public_network_access_enabled = "..."      
      name = "..."      
   }
   
}

tfstate_inputs = {
   resource_management_private_link_association.management_group.id = "path/to/management_group_component:id"   
}

```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of this Resource Management Private Link. Changing this forces a new Resource Management Private Link to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group within which this Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created. | 
| **location** | string |  The Azure Region where the Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Resource Management Private Link. | 

Additionally, all variables are provided as outputs.
