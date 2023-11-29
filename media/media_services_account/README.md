# azurerm_media_services_account

Manages a Media Services Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Media Services Account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Media Services Account. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **storage_account** | block | True | -  |  -  | One or more `storage_account` blocks. | 
| **encryption** | block | False | -  |  -  | An `encryption` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for this server. Defaults to `true`. | 
| **storage_authentication_type** | string | False | -  |  -  | Specifies the storage authentication type. Possible value is `ManagedIdentity` or `System`. | 
| **key_delivery_access_control** | block | False | -  |  -  | A `key_delivery_access_control` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags assigned to the resource. | 

