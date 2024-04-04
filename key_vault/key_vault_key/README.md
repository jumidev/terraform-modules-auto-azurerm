# azurerm_key_vault_key



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "key_vault/key_vault_key"   
}
inputs = {
   name = "Specifies the name of the Key Vault Key"   
   # key_vault_id → set in component_inputs
   key_type = "Specifies the Key Type to use for this Key Vault Key..."   
   key_opts = "A list of JSON web key operations"   
}
component_inputs = {
   key_vault_id = "path/to/key_vault_component:id"   
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
| **name** | string |  -  |  Specifies the name of the Key Vault Key. Changing this forces a new resource to be created. | 
| **key_vault_id** | string |  -  |  The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created. | 
| **key_type** | string |  `EC`, `EC-HSM`, `RSA`, `RSA-HSM`  |  Specifies the Key Type to use for this Key Vault Key. Possible values are `EC` (Elliptic Curve), `EC-HSM`, `RSA` and `RSA-HSM`. Changing this forces a new resource to be created. | 
| **key_opts** | list |  `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify`, `wrapKey`  |  A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify` and `wrapKey`. Please note these values are case sensitive. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **key_size** | string |  -  |  `key_type`, `RSA`, `RSA-HSM`  |  Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA` or `RSA-HSM`. Changing this forces a new resource to be created. | 
| **curve** | string |  `P-256`  |  `EC`, `P-256`, `P-256K`, `P-384`, `P-521`  |  Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `key_type` is `EC` or `EC-HSM`. The API will default to `P-256` if nothing is specified. Changing this forces a new resource to be created. | 
| **not_before_date** | string |  -  |  -  |  Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z'). | 
| **expiration_date** | string |  -  |  -  |  Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **rotation_policy** | [block](#rotation_policy-block-structure) |  -  |  -  |  A `rotation_policy` block. | 

### `rotation_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expire_after` | string | No | - | Expire a Key Vault Key after given duration as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). |
| `automatic` | [block](#automatic-block-structure) | No | - | An 'automatic' block. |
| `notify_before_expiry` | string | No | - | Notify at a given duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). |

### `automatic` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `time_after_creation` | string | No | - | Rotate automatically at a duration after create as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). |
| `time_before_expiry` | string | No | - | Rotate automatically at a duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **time_before_expiry** | string | No  | Rotate automatically at a duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Key Vault Key ID. | 
| **resource_id** | string | No  | The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services. | 
| **resource_versionless_id** | string | No  | The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated. | 
| **version** | string | No  | The current version of the Key Vault Key. | 
| **versionless_id** | string | No  | The Base ID of the Key Vault Key. | 
| **public_key_pem** | string | No  | The PEM encoded public key of this Key Vault Key. | 
| **public_key_openssh** | string | No  | The OpenSSH encoded public key of this Key Vault Key. | 

Additionally, all variables are provided as outputs.
