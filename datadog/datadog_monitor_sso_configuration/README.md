# azurerm_datadog_monitor_sso_configuration

Manages SingleSignOn on the datadog Monitor.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "datadog/datadog_monitor_sso_configuration"   
}

inputs = {
   datadog_monitor_id = "The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configu..."   
   single_sign_on_enabled = "The state of SingleSignOn configuration"   
   enterprise_application_id = "The application Id to perform SSO operation"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **datadog_monitor_id** | string |  -  |  The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created. | 
| **single_sign_on_enabled** | bool |  `Enable`, `Disable`  |  The state of SingleSignOn configuration. Possible values are `Enable` and `Disable`. | 
| **enterprise_application_id** | string |  -  |  The application Id to perform SSO operation. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  `default`  |  The name of the SingleSignOn configuration. Defaults to `default`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **login_url** | string | No  | The SingleSignOn URL to login to Datadog org. | 

Additionally, all variables are provided as outputs.
