# azurerm_automation_variable_string

Manages a string variable in Azure Automation

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_variable_string" 
}

inputs = {
   name = "name of automation_variable_string" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_variable_string" 
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
| **var.name** | string  The name of the Automation Variable. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string  The name of the automation account in which the Variable is created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.description** | string  -  |  The description of the Automation Variable. | 
| **var.encrypted** | bool  `False`  |  Specifies if the Automation Variable is encrypted. Defaults to `false`. | 
| **var.value** | string  -  |  The value of the Automation Variable as a `string`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Variable. | 

Additionally, all variables are provided as outputs.
