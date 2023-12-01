# azurerm_automation_variable_datetime

Manages a DateTime variable in Azure Automation

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_variable_datetime" 
}

inputs = {
   name = "name of automation_variable_datetime" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_variable_datetime" 
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
| **name** | string |  The name of the Automation Variable. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the Variable is created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **description** | string |  -  |  The description of the Automation Variable. | 
| **encrypted** | bool |  `False`  |  Specifies if the Automation Variable is encrypted. Defaults to `false`. | 
| **value** | string |  -  |  The value of the Automation Variable in the [RFC3339 Section 5.6 Internet Date/Time Format](https://tools.ietf.org/html/rfc3339#section-5.6). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Variable. | 

Additionally, all variables are provided as outputs.
