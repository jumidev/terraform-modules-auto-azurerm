# azurerm_automation_credential

Manages a Automation Credential.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_credential"   
}

inputs = {
   name = "Specifies the name of the Credential"   
   resource_group_name = "${resource_group}"   
   # automation_account_name → set in component_inputs
   username = "The username associated with this Automation Credential..."   
   password = "The password associated with this Automation Credential..."   
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
| **name** | string |  Specifies the name of the Credential. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Credential is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the Credential is created. Changing this forces a new resource to be created. | 
| **username** | string |  The username associated with this Automation Credential. | 
| **password** | string |  The password associated with this Automation Credential. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description associated with this Automation Credential. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Credential. | 

Additionally, all variables are provided as outputs.
