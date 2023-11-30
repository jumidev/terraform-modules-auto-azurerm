# azurerm_portal_dashboard

Manages a shared dashboard in the Azure Portal.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "portal/portal_dashboard" 
}

inputs = {
   name = "name of portal_dashboard" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   dashboard_properties = "dashboard_properties of portal_dashboard" 
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
| **var.name** | string |  Specifies the name of the Shared Dashboard. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the dashboard. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.dashboard_properties** | string |  JSON data representing dashboard body. See above for details on how to obtain this from the Portal. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dashboard. | 

Additionally, all variables are provided as outputs.
