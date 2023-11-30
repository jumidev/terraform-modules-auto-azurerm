# azurerm_dashboard

Manages a shared dashboard in the Azure Portal.!> **Note:** The `azurerm_dashboard` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_portal_dashboard`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/portal_dashboard) resource instead.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Shared Dashboard. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the dashboard. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.dashboard_properties** | string | False | JSON data representing dashboard body. See above for details on how to obtain this from the Portal. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **dashboard_properties** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Dashboard. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "portal/dashboard" 
}

inputs = {
   name = "name of dashboard" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```