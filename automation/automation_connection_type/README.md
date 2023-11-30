# azurerm_automation_connection_type

Manages anAutomation Connection Type.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created. | 
| **var.automation_account_name** | string | True | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.field** | block | True | One or more `field` blocks. Changing this forces a new Automation to be created. | 
| **var.is_global** | bool | False | Whether the connection type is global. Changing this forces a new Automation to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **field** | block  | - | 
| **is_global** | bool  | - | 
| **id** | string  | The the Automation Connection Type ID. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_connection_type" 
}

inputs = {
   name = "name of automation_connection_type" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_connection_type" 
   field = "field of automation_connection_type" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```