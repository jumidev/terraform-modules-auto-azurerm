# azurerm_managed_application_definition

Manages a Managed Application Definition.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "managed_applications/managed_application_definition" 
}

inputs = {
   name = "name of managed_application_definition" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   lock_level = "lock_level of managed_application_definition" 
   display_name = "display_name of managed_application_definition" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  -  |  Specifies the name of the Managed Application Definition. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group where the Managed Application Definition should exist. Changing this forces a new resource to be created. | 
| **var.location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.lock_level** | string |  `CanNotDelete`, `None`, `ReadOnly`  |  Specifies the managed application lock level. Valid values include `CanNotDelete`, `None`, `ReadOnly`. Changing this forces a new resource to be created. | 
| **var.display_name** | string |  -  |  Specifies the managed application definition display name. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.authorization** | list |  -  |  One or more `authorization` block defined below. | 
| **var.create_ui_definition** | string |  -  |  Specifies the `createUiDefinition` JSON for the backing template with `Microsoft.Solutions/applications` resource. | 
| **var.description** | string |  -  |  Specifies the managed application definition description. | 
| **var.package_enabled** | bool |  `True`  |  Is the package enabled? Defaults to `true`. | 
| **var.main_template** | string |  -  |  Specifies the inline main template JSON which has resources to be provisioned. | 
| **var.package_file_uri** | string |  -  |  Specifies the managed application definition package file Uri. | 
| **var.tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Managed Application Definition. | 

Additionally, all variables are provided as outputs.
