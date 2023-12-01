# azurerm_automation_connection_classic_certificate

Manages an Automation Connection with type `AzureClassicCertificate`.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **certificate_asset_name** | string |  The name of the certificate asset. | 
| **subscription_name** | string |  The name of subscription. | 
| **subscription_id** | string |  The id of subscription. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description for this Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Connection ID. | 

Additionally, all variables are provided as outputs.
