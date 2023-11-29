# azurerm_app_service_public_certificate

Manages an App Service Public Certificate.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **app_service_name** | string | True | -  |  -  | The name of the App Service. Changing this forces a new App Service Public Certificate to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the App Service Public Certificate should exist. Changing this forces a new App Service Public Certificate to be created. | 
| **certificate_name** | string | True | -  |  -  | The name of the public certificate. Changing this forces a new App Service Public Certificate to be created. | 
| **certificate_location** | string | True | -  |  `CurrentUserMy`, `LocalMachineMy`, `Unknown`  | The location of the certificate. Possible values are `CurrentUserMy`, `LocalMachineMy` and `Unknown`. Changing this forces a new App Service Public Certificate to be created. | 
| **blob** | string | True | -  |  -  | The base64-encoded contents of the certificate. Changing this forces a new App Service Public Certificate to be created. | 

