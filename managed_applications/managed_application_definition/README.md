# azurerm_managed_application_definition

Manages a Managed Application Definition.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Managed Application Definition. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Managed Application Definition should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **lock_level** | string | True | -  |  `CanNotDelete`, `None`, `ReadOnly`  | Specifies the managed application lock level. Valid values include `CanNotDelete`, `None`, `ReadOnly`. Changing this forces a new resource to be created. | 
| **authorization** | list | False | -  |  -  | One or more `authorization` block defined below. | 
| **create_ui_definition** | string | False | -  |  -  | Specifies the `createUiDefinition` JSON for the backing template with `Microsoft.Solutions/applications` resource. | 
| **display_name** | string | True | -  |  -  | Specifies the managed application definition display name. | 
| **description** | string | False | -  |  -  | Specifies the managed application definition description. | 
| **package_enabled** | bool | False | `True`  |  -  | Is the package enabled? Defaults to `true`. | 
| **main_template** | string | False | -  |  -  | Specifies the inline main template JSON which has resources to be provisioned. | 
| **package_file_uri** | string | False | -  |  -  | Specifies the managed application definition package file Uri. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

