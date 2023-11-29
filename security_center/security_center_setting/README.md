# azurerm_security_center_setting

Manages the Data Access Settings for Azure Security Center.~> **NOTE:** This resource requires the `Owner` permission on the Subscription.~> **NOTE:** Deletion of this resource disables the setting.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **setting_name** | string | True | -  |  `MCAS`, `WDATP`, `SENTINEL`  | The setting to manage. Possible values are `MCAS` , `WDATP` and `SENTINEL`. Changing this forces a new resource to be created. | 
| **enabled** | bool | True | -  |  -  | Boolean flag to enable/disable data access. | 

