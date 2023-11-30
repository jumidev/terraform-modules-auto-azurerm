# azurerm_resource_management_private_link

Manages a Resource Management Private Link to restrict access for managing resources in the tenant.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "management/resource_management_private_link" 
}

inputs = {
   name = "name of resource_management_private_link" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of this Resource Management Private Link. Changing this forces a new Resource Management Private Link to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group within which this Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created. | 
| **var.location** | string | True | The Azure Region where the Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Resource Management Private Link. | 

Additionally, all variables are provided as outputs.
