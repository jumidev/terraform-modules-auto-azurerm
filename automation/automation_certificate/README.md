# azurerm_automation_certificate

Manages an Automation Certificate.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_certificate"   
}

inputs = {
   name = "Specifies the name of the Certificate"   
   resource_group_name = "${resource_group}"   
   # automation_account_name → set in tfstate_inputs
   base64 = "Base64 encoded value of the certificate"   
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
| **name** | string |  Specifies the name of the Certificate. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Certificate is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the Certificate is created. Changing this forces a new resource to be created. | 
| **base64** | string |  Base64 encoded value of the certificate. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description of this Automation Certificate. | 
| **exportable** | string |  The is exportable flag of the certificate. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Certificate ID. | 
| **thumbprint** | string | No  | The thumbprint for the certificate. | 

Additionally, all variables are provided as outputs.
