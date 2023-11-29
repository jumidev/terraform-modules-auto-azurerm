# azurerm_datadog_monitor_sso_configuration

Manages SingleSignOn on the datadog Monitor.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.datadog_monitor_id** | string | True | -  |  -  | The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created. | 
| **var.single_sign_on_enabled** | string | True | -  |  `Enable`, `Disable`  | The state of SingleSignOn configuration. Possible values are `Enable` and `Disable`. | 
| **var.enterprise_application_id** | string | True | -  |  -  | The application Id to perform SSO operation. | 
| **var.name** | string | False | `default`  |  -  | The name of the SingleSignOn configuration. Defaults to `default`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **datadog_monitor_id** | string  | - | 
| **single_sign_on_enabled** | string  | - | 
| **enterprise_application_id** | string  | - | 
| **name** | string  | - | 
| **login_url** | string  | The SingleSignOn URL to login to Datadog org. | 