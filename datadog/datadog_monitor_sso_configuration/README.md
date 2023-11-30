# azurerm_datadog_monitor_sso_configuration

Manages SingleSignOn on the datadog Monitor.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "datadog/datadog_monitor_sso_configuration" 
}

inputs = {
   datadog_monitor_id = "datadog_monitor_id of datadog_monitor_sso_configuration" 
   single_sign_on_enabled = "single_sign_on_enabled of datadog_monitor_sso_configuration" 
   enterprise_application_id = "enterprise_application_id of datadog_monitor_sso_configuration" 
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
| **var.datadog_monitor_id** | string |  -  |  The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created. | 
| **var.single_sign_on_enabled** | string |  `Enable`, `Disable`  |  The state of SingleSignOn configuration. Possible values are `Enable` and `Disable`. | 
| **var.enterprise_application_id** | string |  -  |  The application Id to perform SSO operation. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  `default`  |  The name of the SingleSignOn configuration. Defaults to `default`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **login_url** | string | No  | The SingleSignOn URL to login to Datadog org. | 

Additionally, all variables are provided as outputs.
