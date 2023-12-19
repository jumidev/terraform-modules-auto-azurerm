# azurerm_automation_dsc_nodeconfiguration

Manages a Automation DSC Node Configuration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_dsc_nodeconfiguration"   
}

inputs = {
   name = "Specifies the name of the DSC Node Configuration"   
   resource_group_name = "${resource_group}"   
   # automation_account_name → set in component_inputs
   content_embedded = "The PowerShell DSC Node Configuration (mof content)..."   
}

component_inputs = {
   automation_account_name = "path/to/automation_account_component:name"   
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
| **name** | string |  Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created. | 
| **content_embedded** | string |  The PowerShell DSC Node Configuration (mof content). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The DSC Node Configuration ID. | 

Additionally, all variables are provided as outputs.
