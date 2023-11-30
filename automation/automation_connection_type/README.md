# azurerm_automation_connection_type

Manages anAutomation Connection Type.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_connection_type" 
}

inputs = {
   name = "name of automation_connection_type" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_connection_type" 
   field = {
      example_field = {
         type = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created. | 
| **var.automation_account_name** | string | True | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.field** | block | True | One or more `field` blocks. Changing this forces a new Automation to be created. | 
| **var.is_global** | bool | False | Whether the connection type is global. Changing this forces a new Automation to be created. | 

### `field` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of the connection field definition. |
| `is_encrypted` | string | No | - | Whether to set the isEncrypted flag of the connection field definition. |
| `is_optional` | string | No | - | Whether to set the isOptional flag of the connection field definition. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The the Automation Connection Type ID. | 

Additionally, all variables are provided as outputs.
