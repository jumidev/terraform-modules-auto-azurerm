# azurerm_app_service_public_certificate

Manages an App Service Public Certificate.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.app_service_name** | string | True | -  |  -  | The name of the App Service. Changing this forces a new App Service Public Certificate to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the App Service Public Certificate should exist. Changing this forces a new App Service Public Certificate to be created. | 
| **var.certificate_name** | string | True | -  |  -  | The name of the public certificate. Changing this forces a new App Service Public Certificate to be created. | 
| **var.certificate_location** | string | True | -  |  `CurrentUserMy`, `LocalMachineMy`, `Unknown`  | The location of the certificate. Possible values are `CurrentUserMy`, `LocalMachineMy` and `Unknown`. Changing this forces a new App Service Public Certificate to be created. | 
| **var.blob** | string | True | -  |  -  | The base64-encoded contents of the certificate. Changing this forces a new App Service Public Certificate to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **app_service_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **certificate_name** | string  | - | 
| **certificate_location** | string  | - | 
| **blob** | string  | - | 
| **id** | string  | The ID of the App Service Public Certificate. | 
| **thumbprint** | string  | The thumbprint of the public certificate. | 