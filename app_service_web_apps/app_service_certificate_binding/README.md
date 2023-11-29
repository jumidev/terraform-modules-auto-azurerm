# azurerm_app_service_certificate_binding

Manages an App Service Certificate Binding.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **certificate_id** | string | True | -  |  -  | The ID of the certificate to bind to the custom domain. Changing this forces a new App Service Certificate Binding to be created. | 
| **hostname_binding_id** | string | True | -  |  -  | The ID of the Custom Domain/Hostname Binding. Changing this forces a new App Service Certificate Binding to be created. | 
| **ssl_state** | string | True | -  |  `IpBasedEnabled`, `SniEnabled`  | The type of certificate binding. Allowed values are `IpBasedEnabled` or `SniEnabled`. Changing this forces a new App Service Certificate Binding to be created. | 

