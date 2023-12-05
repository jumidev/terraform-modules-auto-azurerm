# azurerm_automation_account

Manages a Automation Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_account"   
}

inputs = {
   name = "Specifies the name of the Automation Account"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku_name = "The SKU of the account"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Automation Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `Basic`, `Free`  |  The SKU of the account. Possible values are `Basic` and `Free`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **local_authentication_enabled** | bool |  `True`  |  Whether requests using non-AAD authentication are blocked. Defaults to `true`. | 
| **public_network_access_enabled** | bool |  `True`  |  Whether public network access is allowed for the automation account. Defaults to `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Account. | 
| **identity** | block | No  | An `identity` block. | 
| **dsc_server_endpoint** | string | No  | The DSC Server Endpoint associated with this Automation Account. | 
| **dsc_primary_access_key** | string | Yes  | The Primary Access Key for the DSC Endpoint associated with this Automation Account. | 
| **dsc_secondary_access_key** | string | Yes  | The Secondary Access Key for the DSC Endpoint associated with this Automation Account. | 
| **hybrid_service_url** | string | No  | The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
