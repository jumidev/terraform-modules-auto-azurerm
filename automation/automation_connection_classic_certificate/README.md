# azurerm_automation_connection_classic_certificate

Manages an Automation Connection with type `AzureClassicCertificate`.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.certificate_asset_name** | string | True | The name of the certificate asset. | 
| **var.subscription_name** | string | True | The name of subscription. | 
| **var.subscription_id** | string | True | The id of subscription. | 
| **var.description** | string | False | A description for this Connection. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **certificate_asset_name** | string  | - | 
| **subscription_name** | string  | - | 
| **subscription_id** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The Automation Connection ID. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_connection_classic_certificate" 
}

inputs = {
   name = "name of automation_connection_classic_certificate" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_connection_classic_certificate" 
   certificate_asset_name = "certificate_asset_name of automation_connection_classic_certificate" 
   subscription_name = "subscription_name of automation_connection_classic_certificate" 
   subscription_id = "subscription_id of automation_connection_classic_certificate" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```