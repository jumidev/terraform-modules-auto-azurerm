# azurerm_automation_certificate

Manages an Automation Certificate.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_certificate" 
}

inputs = {
   name = "name of automation_certificate" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_certificate" 
   base64 = "base64 of automation_certificate" 
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
| **var.name** | string |  Specifies the name of the Certificate. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which the Certificate is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string |  The name of the automation account in which the Certificate is created. Changing this forces a new resource to be created. | 
| **var.base64** | string |  Base64 encoded value of the certificate. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string |  The description of this Automation Certificate. | 
| **var.exportable** | string |  The is exportable flag of the certificate. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Certificate ID. | 
| **thumbprint** | string | No  | The thumbprint for the certificate. | 

Additionally, all variables are provided as outputs.
