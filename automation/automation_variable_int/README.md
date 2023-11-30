# azurerm_automation_variable_int

Manages a integer variable in Azure Automation

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Automation Variable. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | -  |  The name of the automation account in which the Variable is created. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  The description of the Automation Variable. | 
| **var.encrypted** | bool | False | `False`  |  Specifies if the Automation Variable is encrypted. Defaults to `false`. | 
| **var.value** | string | False | -  |  The value of the Automation Variable as a `integer`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **description** | string  | - | 
| **encrypted** | bool  | - | 
| **value** | string  | - | 
| **id** | string  | The ID of the Automation Variable. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_variable_int" 
}

inputs = {
   name = "name of automation_variable_int" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_variable_int" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```