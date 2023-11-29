# azurerm_datadog_monitor_sso_configuration

Manages SingleSignOn on the datadog Monitor.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **datadog_monitor_id** | string | True | -  |  -  | The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created. | 
| **single_sign_on_enabled** | string | True | -  |  `Enable`, `Disable`  | The state of SingleSignOn configuration. Possible values are `Enable` and `Disable`. | 
| **enterprise_application_id** | string | True | -  |  -  | The application Id to perform SSO operation. | 
| **name** | string | False | `default`  |  -  | The name of the SingleSignOn configuration. Defaults to `default`. | 

