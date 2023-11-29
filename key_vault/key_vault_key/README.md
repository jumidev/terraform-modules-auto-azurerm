# azurerm_key_vault_key

Manages a Key Vault Key.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Key Vault Key. Changing this forces a new resource to be created. | 
| **key_vault_id** | string | True | -  |  -  | The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created. | 
| **key_type** | string | True | -  |  `EC`, `EC-HSM`, `RSA`, `RSA-HSM`  | Specifies the Key Type to use for this Key Vault Key. Possible values are `EC` (Elliptic Curve), `EC-HSM`, `RSA` and `RSA-HSM`. Changing this forces a new resource to be created. | 
| **key_size** | string | False | -  |  -  | Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA` or `RSA-HSM`. Changing this forces a new resource to be created. | 
| **curve** | string | False | `P-256`  |  `P-256`, `P-256K`, `P-384`, `P-521`  | Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `key_type` is `EC` or `EC-HSM`. The API will default to `P-256` if nothing is specified. Changing this forces a new resource to be created. | 
| **key_opts** | string | True | -  |  `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify`, `wrapKey`  | A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify` and `wrapKey`. Please note these values are case sensitive. | 
| **not_before_date** | datetime | False | -  |  -  | Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z'). | 
| **expiration_date** | datetime | False | -  |  -  | Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **rotation_policy** | block | False | -  |  -  | A `rotation_policy` block. | 

