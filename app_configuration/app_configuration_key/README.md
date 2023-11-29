# azurerm_app_configuration_key

Manages an Azure App Configuration Key.-> **Note:** App Configuration Keys are provisioned using a Data Plane API which requires the role `App Configuration Data Owner` on either the App Configuration or a parent scope (such as the Resource Group/Subscription). [More information can be found in the Azure Documentation for App Configuration](https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac#azure-built-in-roles-for-azure-app-configuration).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.configuration_store_id** | string | True | -  |  -  | Specifies the id of the App Configuration. Changing this forces a new resource to be created. | 
| **var.key** | string | True | -  |  -  | The name of the App Configuration Key to create. Changing this forces a new resource to be created. | 
| **var.content_type** | string | False | -  |  -  | The content type of the App Configuration Key. This should only be set when type is set to `kv`. | 
| **var.label** | string | False | -  |  -  | The label of the App Configuration Key. Changing this forces a new resource to be created. | 
| **var.value** | string | False | -  |  -  | The value of the App Configuration Key. This should only be set when type is set to `kv`. | 
| **var.locked** | string | False | -  |  -  | Should this App Configuration Key be Locked to prevent changes? | 
| **var.type** | string | False | `kv`  |  -  | The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/). Defaults to `kv`. | 
| **var.vault_key_reference** | string | False | -  |  -  | The ID of the vault secret this App Configuration Key refers to, when `type` is set to `vault`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **configuration_store_id** | string  | - | 
| **key** | string  | - | 
| **content_type** | string  | - | 
| **label** | string  | - | 
| **value** | string  | - | 
| **locked** | string  | - | 
| **type** | string  | - | 
| **vault_key_reference** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The App Configuration Key ID. | 
| **etag** | string  | The ETag of the key. | 