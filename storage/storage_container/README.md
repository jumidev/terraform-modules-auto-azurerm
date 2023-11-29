# azurerm_storage_container

Manages a Container within an Azure Storage Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created. | 
| **storage_account_name** | string | True | -  |  -  | The name of the Storage Account where the Container should be created. Changing this forces a new resource to be created. | 
| **container_access_type** | string | False | `private`  |  `blob`, `container`, `private`  | The Access Level configured for this Container. Possible values are `blob`, `container` or `private`. Defaults to `private`. | 
| **metadata** | string | False | -  |  -  | A mapping of MetaData for this Container. All metadata keys should be lowercase. | 

