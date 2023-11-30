# azurerm_automation_credential

Manages a Automation Credential.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_credential" 
}

inputs = {
   name = "name of automation_credential" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_credential" 
   username = "username of automation_credential" 
   password = "password of automation_credential" 
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
| **var.name** | string |  Specifies the name of the Credential. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which the Credential is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string |  The name of the automation account in which the Credential is created. Changing this forces a new resource to be created. | 
| **var.username** | string |  The username associated with this Automation Credential. | 
| **var.password** | string |  The password associated with this Automation Credential. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string |  The description associated with this Automation Credential. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Credential. | 

Additionally, all variables are provided as outputs.
