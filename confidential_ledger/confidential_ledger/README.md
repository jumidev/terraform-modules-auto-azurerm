# azurerm_confidential_ledger

Manages a Confidential Ledger.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "confidential_ledger/confidential_ledger"   
}

inputs = {
   name = "name of confidential_ledger"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   azuread_based_service_principal = {
      this_azuread_based_service_principal = {
         ledger_role_name = "..."         
         principal_id = "..."         
         # tenant_id → set in tfstate_inputs
      }
      
   }
   
   ledger_type = "ledger_type of confidential_ledger"   
}

tfstate_inputs = {
   azuread_based_service_principal.this_azuread_based_service_principal.tenant_id = "path/to/aadb2c_directory_component:tenant_id"   
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
| **name** | string |  -  |  Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created. | 
| **azuread_based_service_principal** | [block](#azuread_based_service_principal-block-structure) |  -  |  A list of `azuread_based_service_principal` blocks. | 
| **ledger_type** | string |  `Private`, `Public`  |  Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **certificate_based_security_principal** | [block](#certificate_based_security_principal-block-structure) |  A list of `certificate_based_security_principal` blocks. | 
| **tags** | map |  A mapping of tags to assign to the Confidential Ledger. | 

### `azuread_based_service_principal` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ledger_role_name` | string | Yes | - | Specifies the Ledger Role to grant this AzureAD Service Principal. Possible values are 'Administrator', 'Contributor' and 'Reader'. |
| `principal_id` | string | Yes | - | Specifies the Principal ID of the AzureAD Service Principal. |
| `tenant_id` | string | Yes | - | Specifies the Tenant ID for this AzureAD Service Principal. |

### `certificate_based_security_principal` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ledger_role_name` | string | Yes | - | Specifies the Ledger Role to grant this Certificate Security Principal. Possible values are 'Administrator', 'Contributor' and 'Reader'. |
| `pem_public_key` | string | Yes | - | The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this Confidential Ledger. | 
| **identity_service_endpoint** | string | No  | The Identity Service Endpoint for this Confidential Ledger. | 
| **ledger_endpoint** | string | No  | The Endpoint for this Confidential Ledger. | 

Additionally, all variables are provided as outputs.
