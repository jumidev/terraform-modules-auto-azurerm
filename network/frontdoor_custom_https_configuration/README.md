# azurerm_frontdoor_custom_https_configuration



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/frontdoor_custom_https_configuration"   
}

inputs = {
   # frontend_endpoint_id → set in component_inputs
   custom_https_provisioning_enabled = "Should the HTTPS protocol be enabled for this custom domain associated with the ..."   
}

component_inputs = {
   frontend_endpoint_id = "path/to/frontdoor_component:id"   
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
| **frontend_endpoint_id** | string |  The ID of the Front Door Frontend Endpoint which this configuration refers to. Changing this forces a new resource to be created. | 
| **custom_https_provisioning_enabled** | bool |  Should the HTTPS protocol be enabled for this custom domain associated with the Front Door? | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **custom_https_configuration** | [block](#custom_https_configuration-block-structure) |  A `custom_https_configuration` block. | 

### `custom_https_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `certificate_source` | string | No | FrontDoor | Certificate source to encrypted 'HTTPS' traffic with. Allowed values are 'FrontDoor' or 'AzureKeyVault'. Defaults to 'FrontDoor'. The following attributes are only valid if 'certificate_source' is set to 'AzureKeyVault': |
| `azure_key_vault_certificate_vault_id` | string | No | - | The ID of the Key Vault containing the SSL certificate. |
| `azure_key_vault_certificate_secret_name` | string | No | - | The name of the Key Vault secret representing the full certificate PFX. |
| `azure_key_vault_certificate_secret_version` | string | No | - | The version of the Key Vault secret representing the full certificate PFX. ~> **Note:** In order to enable the use of your own custom 'HTTPS certificate' you must grant 'Azure Front Door Service' access to your key vault. For instructions on how to configure your 'Key Vault' correctly please refer to the [product documentation](https://docs.microsoft.com/azure/frontdoor/front-door-custom-domain-https#option-2-use-your-own-certificate). |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Front Door Custom HTTPS Configuration. | 
| **custom_https_configuration** | block | No  | A `custom_https_configuration` block. | 
| **minimum_tls_version** | string | No  | Minimum client TLS version supported. | 

Additionally, all variables are provided as outputs.
