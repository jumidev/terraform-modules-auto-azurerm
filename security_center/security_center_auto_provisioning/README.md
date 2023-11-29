# azurerm_security_center_auto_provisioning

Enables or disables the Security Center Auto Provisioning feature for the subscription~> **NOTE:** There is no resource name required, it will always be "default"

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.auto_provision** | string | True | `On`, `Off`  |  Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are `On` (to install the security agent automatically, if it's missing) or `Off` (to not install the security agent automatically). | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **auto_provision** | string  | - | 
| **id** | string  | The ID of the Security Center Auto Provisioning. | 