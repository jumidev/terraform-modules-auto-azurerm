# azurerm_cdn_frontdoor_secret



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_frontdoor_secret"   
}
inputs = {
   name = "The name which should be used for this Front Door Secret..."   
   # cdn_frontdoor_profile_id → set in component_inputs
   secret = {
      customer_certificate = "..."      
   }   
}
component_inputs = {
   cdn_frontdoor_profile_id = "path/to/cdn_frontdoor_profile_component:id"   
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
| **name** | string |  The name which should be used for this Front Door Secret. Possible values must start with a letter or a number, only contain letters, numbers and hyphens and have a length of between 2 and 260 characters. Changing this forces a new Front Door Secret to be created. | 
| **cdn_frontdoor_profile_id** | string |  The Resource ID of the Front Door Profile. Changing this forces a new Front Door Secret to be created. | 
| **secret** | [block](#secret-block-structure) |  A `secret` block. Changing this forces a new Front Door Secret to be created. | 

### `customer_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_certificate_id` | string | Yes | - | The ID of the Key Vault certificate resource to use. Changing this forces a new Front Door Secret to be created. ->**NOTE:** If you would like to use the **latest version** of the Key Vault Certificate use the Key Vault Certificates 'versionless_id' attribute as the 'key_vault_certificate_id' fields value(e.g. 'key_vault_certificate_id = azurerm_key_vault_certificate.example.versionless_id'). |
| `subject_alternative_names` | list | No | - | (Computed) One or more 'subject alternative names' contained within the key vault certificate. |

### `secret` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `customer_certificate` | [block](#customer_certificate-block-structure) | Yes | - | A 'customer_certificate' block. Changing this forces a new Front Door Secret to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Secret. | 
| **cdn_frontdoor_profile_name** | string | No  | The name of the Front Door Profile containing this Front Door Secret. | 

Additionally, all variables are provided as outputs.
