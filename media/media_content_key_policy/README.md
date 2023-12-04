# azurerm_media_content_key_policy

Manages a Content Key Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_content_key_policy" 
}

inputs = {
   # media_services_account_name → set in tfstate_inputs
   name = "name of media_content_key_policy" 
   policy_option = {
      example_policy_option = {
      }
  
   }
 
   resource_group_name = "${resource_group}" 
}

tfstate_inputs = {
   media_services_account_name = "path/to/media_services_account_component:name" 
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
| **media_services_account_name** | string |  The Media Services account name. Changing this forces a new Content Key Policy to be created. | 
| **name** | string |  The name which should be used for this Content Key Policy. Changing this forces a new Content Key Policy to be created. | 
| **policy_option** | [block](#policy_option-block-structure) |  One or more `policy_option` blocks. | 
| **resource_group_name** | string |  The name of the Resource Group where the Content Key Policy should exist. Changing this forces a new Content Key Policy to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description for the Policy. | 

### `token_restriction` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `alternate_key` | list | No | - | One or more 'alternate_key' block. |
| `audience` | string | No | - | The audience for the token. |
| `issuer` | string | No | - | The token issuer. |
| `open_id_connect_discovery_document` | string | No | - | The OpenID connect discovery document. |
| `primary_rsa_token_key_exponent` | string | No | - | The RSA parameter exponent. |
| `primary_rsa_token_key_modulus` | string | No | - | The RSA parameter modulus. |
| `primary_symmetric_token_key` | string | No | - | The key value of the key. Specifies a symmetric key for token validation. |
| `primary_x509_token_key_raw` | string | No | - | The raw data field of a certificate in PKCS 12 format (X509Certificate2 in .NET). Specifies a certificate for token validation. |
| `required_claim` | list | No | - | One or more 'required_claim' blocks. |
| `token_type` | string | No | - | The type of token. Supported values are 'Jwt' or 'Swt'. |

### `offline_rental_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `playback_duration_seconds` | int | No | - | Playback duration. |
| `storage_duration_seconds` | int | No | - | Storage duration. |

### `policy_option` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `clear_key_configuration_enabled` | bool | No | - | Enable a configuration for non-DRM keys. |
| `fairplay_configuration` | [block](#policy_option-block-structure) | No | - | A 'fairplay_configuration' block. Check license requirements here <https://docs.microsoft.com/azure/media-services/latest/fairplay-license-overview>. |
| `open_restriction_enabled` | bool | No | - | Enable an open restriction. License or key will be delivered on every request. |
| `playready_configuration_license` | list | No | - | One or more 'playready_configuration_license' blocks. |
| `playready_response_custom_data` | string | No | - | The custom response data of the PlayReady configuration. This only applies when 'playready_configuration_license' is specified. |
| `token_restriction` | [block](#policy_option-block-structure) | No | - | A 'token_restriction' block. |
| `widevine_configuration_template` | string | No | - | The Widevine template. |

### `fairplay_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ask` | string | No | - | The key that must be used as FairPlay Application Secret key. |
| `offline_rental_configuration` | [block](#fairplay_configuration-block-structure) | No | - | A 'offline_rental_configuration' block. |
| `pfx` | string | No | - | The Base64 representation of FairPlay certificate in PKCS 12 (pfx) format (including private key). |
| `pfx_password` | string | No | - | The password encrypting FairPlay certificate in PKCS 12 (pfx) format. |
| `rental_and_lease_key_type` | string | No | - | The rental and lease key type. Supported values are 'DualExpiry', 'PersistentLimited', 'PersistentUnlimited' or 'Undefined'. |
| `rental_duration_seconds` | int | No | - | The rental duration. Must be greater than 0. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Content Key Policy. | 

Additionally, all variables are provided as outputs.
