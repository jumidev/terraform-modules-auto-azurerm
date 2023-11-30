# azurerm_automation_connection

Manages an Automation Connection.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_connection" 
}

inputs = {
   name = "name of automation_connection" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_connection" 
   type = "type of automation_connection" 
   values = "values of automation_connection" 
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
| **var.name** | string | True | Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.type** | string | True | The type of the Connection - can be either builtin type such as `Azure`, `AzureClassicCertificate`, and `AzureServicePrincipal`, or a user defined types. Changing this forces a new resource to be created. | 
| **var.values** | string | True | A mapping of key value pairs passed to the connection. Different `type` needs different parameters in the `values`. Builtin types have required field values as below: | 
| **var.Azure** | string | False | : parameters `AutomationCertificateName` and `SubscriptionID`. | 
| **var.AzureClassicCertificate** | string | False | : parameters `SubscriptionName`, `SubscriptionId` and `CertificateAssetName`. | 
| **var.AzureServicePrincipal** | string | False | : parameters `ApplicationId`, `CertificateThumbprint`, `SubscriptionId` and `TenantId`. | 
| **var.description** | string | False | A description for this Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Connection ID. | 

Additionally, all variables are provided as outputs.
