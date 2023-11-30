# azurerm_dashboard

Manages a shared dashboard in the Azure Portal.!> **Note:** The `azurerm_dashboard` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_portal_dashboard`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/portal_dashboard) resource instead.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  Specifies the name of the Shared Dashboard. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which to create the dashboard. Changing this forces a new resource to be created. | 
| **var.location** | string  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.dashboard_properties** | string  JSON data representing dashboard body. See above for details on how to obtain this from the Portal. | 
| **var.tags** | map  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dashboard. | 

Additionally, all variables are provided as outputs.
