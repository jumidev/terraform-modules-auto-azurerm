# azurerm_dashboard

Manages a shared dashboard in the Azure Portal.!> **Note:** The `azurerm_dashboard` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_portal_dashboard`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/portal_dashboard) resource instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Shared Dashboard. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the dashboard. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **dashboard_properties** | string | False | -  |  -  | JSON data representing dashboard body. See above for details on how to obtain this from the Portal. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

