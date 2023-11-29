# azurerm_container_app_environment_certificate

Manages a Container App Environment Certificate.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created. | 
| **container_app_environment_id** | string | True | -  |  -  | The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created. | 
| **certificate_blob_base64** | string | True | -  |  -  | The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created. | 
| **certificate_password** | string | True | -  |  -  | The password for the Certificate. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

