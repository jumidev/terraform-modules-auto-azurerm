# azurerm_automation_connection_type

Manages anAutomation Connection Type.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_connection_type"   
}

inputs = {
   name = "name of automation_connection_type"   
   resource_group_name = "${resource_group}"   
   # automation_account_name → set in tfstate_inputs
   field = {
      this_field = {
         name = "..."         
         type = "..."         
      }
      
   }
   
}

tfstate_inputs = {
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
| **name** | string |  The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **field** | [block](#field-block-structure) |  One or more `field` blocks. Changing this forces a new Automation to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **is_global** | bool |  Whether the connection type is global. Changing this forces a new Automation to be created. | 

### `field` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this connection field definition. |
| `type` | string | Yes | - | The type of the connection field definition. |
| `is_encrypted` | string | No | - | Whether to set the isEncrypted flag of the connection field definition. |
| `is_optional` | string | No | - | Whether to set the isOptional flag of the connection field definition. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The the Automation Connection Type ID. | 

Additionally, all variables are provided as outputs.
