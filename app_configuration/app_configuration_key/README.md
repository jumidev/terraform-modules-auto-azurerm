# azurerm_app_configuration_key

Manages an Azure App Configuration Key.-> **Note:** App Configuration Keys are provisioned using a Data Plane API which requires the role `App Configuration Data Owner` on either the App Configuration or a parent scope (such as the Resource Group/Subscription). [More information can be found in the Azure Documentation for App Configuration](https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac#azure-built-in-roles-for-azure-app-configuration).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_configuration/app_configuration_key" 
}

inputs = {
   configuration_store_id = "configuration_store_id of app_configuration_key" 
   key = "key of app_configuration_key" 
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
| **configuration_store_id** | string |  Specifies the id of the App Configuration. Changing this forces a new resource to be created. | 
| **key** | string |  The name of the App Configuration Key to create. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **content_type** | string |  -  |  The content type of the App Configuration Key. This should only be set when type is set to `kv`. | 
| **label** | string |  -  |  The label of the App Configuration Key. Changing this forces a new resource to be created. | 
| **value** | string |  -  |  The value of the App Configuration Key. This should only be set when type is set to `kv`. | 
| **locked** | string |  -  |  Should this App Configuration Key be Locked to prevent changes? | 
| **type** | string |  `kv`  |  The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/). Defaults to `kv`. | 
| **vault_key_reference** | string |  -  |  The ID of the vault secret this App Configuration Key refers to, when `type` is set to `vault`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The App Configuration Key ID. | 
| **etag** | string | No  | The ETag of the key. | 

Additionally, all variables are provided as outputs.
