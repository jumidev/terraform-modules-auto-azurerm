# azurerm_automation_connection_service_principal

Manages an Automation Connection with type `AzureServicePrincipal`.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_connection_service_principal" 
}

inputs = {
   name = "name of automation_connection_service_principal" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_connection_service_principal" 
   application_id = "application_id of automation_connection_service_principal" 
   certificate_thumbprint = "certificate_thumbprint of automation_connection_service_principal" 
   subscription_id = "subscription_id of automation_connection_service_principal" 
   tenant_id = "tenant_id of automation_connection_service_principal" 
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
| **var.name** | string  Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string  The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.application_id** | string  The (Client) ID of the Service Principal. | 
| **var.certificate_thumbprint** | string  The thumbprint of the Service Principal Certificate. | 
| **var.subscription_id** | string  The subscription GUID. | 
| **var.tenant_id** | string  The ID of the Tenant the Service Principal is assigned in. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  A description for this Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Connection ID. | 

Additionally, all variables are provided as outputs.
