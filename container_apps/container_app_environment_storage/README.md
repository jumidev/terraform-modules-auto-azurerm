# azurerm_container_app_environment_storage

Manages a Container App Environment Storage.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name for this Container App Environment Storage. Changing this forces a new resource to be created. | 
| **container_app_environment_id** | string | True | -  |  -  | The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created. | 
| **account_name** | string | True | -  |  -  | The Azure Storage Account in which the Share to be used is located. Changing this forces a new resource to be created. | 
| **access_key** | string | True | -  |  -  | The Storage Account Access Key. | 
| **share_name** | string | True | -  |  -  | The name of the Azure Storage Share to use. Changing this forces a new resource to be created. | 
| **access_mode** | string | True | -  |  `ReadOnly`, `ReadWrite`  | The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. Changing this forces a new resource to be created. | 

