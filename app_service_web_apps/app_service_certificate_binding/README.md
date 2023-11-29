# azurerm_app_service_certificate_binding

Manages an App Service Certificate Binding.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.certificate_id** | string | True | -  |  -  | The ID of the certificate to bind to the custom domain. Changing this forces a new App Service Certificate Binding to be created. | 
| **var.hostname_binding_id** | string | True | -  |  -  | The ID of the Custom Domain/Hostname Binding. Changing this forces a new App Service Certificate Binding to be created. | 
| **var.ssl_state** | string | True | -  |  `IpBasedEnabled`, `SniEnabled`  | The type of certificate binding. Allowed values are `IpBasedEnabled` or `SniEnabled`. Changing this forces a new App Service Certificate Binding to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **certificate_id** | string  | - | 
| **hostname_binding_id** | string  | - | 
| **ssl_state** | string  | - | 
| **id** | string  | The ID of the App Service Certificate Binding. | 
| **app_service_name** | string  | The name of the App Service to which the certificate was bound. | 
| **hostname** | string  | The hostname of the bound certificate. | 
| **thumbprint** | string  | The certificate thumbprint. | 