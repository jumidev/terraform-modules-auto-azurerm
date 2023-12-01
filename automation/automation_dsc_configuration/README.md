# azurerm_automation_dsc_configuration

Manages a Automation DSC Configuration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_dsc_configuration" 
}

inputs = {
   name = "name of automation_dsc_configuration" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_dsc_configuration" 
   content_embedded = "content_embedded of automation_dsc_configuration" 
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
| **name** | string |  Specifies the name of the DSC Configuration. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created. | 
| **content_embedded** | string |  The PowerShell DSC Configuration script. | 
| **location** | string |  Must be the same location as the Automation Account. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **log_verbose** | string |  Verbose log option. | 
| **description** | string |  Description to go with DSC Configuration. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation DSC Configuration. | 

Additionally, all variables are provided as outputs.
