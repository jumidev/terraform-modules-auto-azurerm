# azurerm_security_center_setting

Manages the Data Access Settings for Azure Security Center.~> **NOTE:** This resource requires the `Owner` permission on the Subscription.~> **NOTE:** Deletion of this resource disables the setting.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "security_center/security_center_setting"   
}

inputs = {
   setting_name = "The setting to manage"   
   enabled = "Boolean flag to enable/disable data access"   
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
| **setting_name** | string |  `MCAS`, `WDATP`, `SENTINEL`  |  The setting to manage. Possible values are `MCAS` , `WDATP` and `SENTINEL`. Changing this forces a new resource to be created. | 
| **enabled** | bool |  -  |  Boolean flag to enable/disable data access. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The subscription security center setting id. | 

Additionally, all variables are provided as outputs.
