# azurerm_app_service_custom_hostname_binding

Manages a Hostname Binding within an App Service (or Function App).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **hostname** | string | True | -  |  -  | Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created. | 
| **app_service_name** | string | True | -  |  -  | The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the App Service exists. Changing this forces a new resource to be created. | 
| **ssl_state** | string | False | -  |  `IpBasedEnabled`, `SniEnabled`  | The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created. | 
| **thumbprint** | string | False | -  |  -  | The SSL certificate thumbprint. Changing this forces a new resource to be created. | 

