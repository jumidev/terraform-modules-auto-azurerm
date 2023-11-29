# azurerm_managed_application_definition

Manages a Managed Application Definition.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Managed Application Definition. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Managed Application Definition should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.lock_level** | string | True | -  |  `CanNotDelete`, `None`, `ReadOnly`  |  Specifies the managed application lock level. Valid values include `CanNotDelete`, `None`, `ReadOnly`. Changing this forces a new resource to be created. | 
| **var.authorization** | list | False | -  |  -  |  One or more `authorization` block defined below. | 
| **var.create_ui_definition** | string | False | -  |  -  |  Specifies the `createUiDefinition` JSON for the backing template with `Microsoft.Solutions/applications` resource. | 
| **var.display_name** | string | True | -  |  -  |  Specifies the managed application definition display name. | 
| **var.description** | string | False | -  |  -  |  Specifies the managed application definition description. | 
| **var.package_enabled** | bool | False | `True`  |  -  |  Is the package enabled? Defaults to `true`. | 
| **var.main_template** | string | False | -  |  -  |  Specifies the inline main template JSON which has resources to be provisioned. | 
| **var.package_file_uri** | string | False | -  |  -  |  Specifies the managed application definition package file Uri. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **lock_level** | string  | - | 
| **authorization** | list  | - | 
| **create_ui_definition** | string  | - | 
| **display_name** | string  | - | 
| **description** | string  | - | 
| **package_enabled** | bool  | - | 
| **main_template** | string  | - | 
| **package_file_uri** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Managed Application Definition. | 