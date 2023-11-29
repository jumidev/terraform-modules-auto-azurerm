# azurerm_security_center_contact

Manages the subscription's Security Center Contact.~> **NOTE:** Owner access permission is required.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.alert_notifications** | string | True | -  |  -  | Whether to send security alerts notifications to the security contact. | 
| **var.alerts_to_admins** | string | True | -  |  -  | Whether to send security alerts notifications to subscription admins. | 
| **var.email** | string | True | -  |  -  | The email of the Security Center Contact. | 
| **var.name** | string | False | `default1`  |  -  | The name of the Security Center Contact. Defaults to `default1`. | 
| **var.phone** | int | False | -  |  -  | The phone number of the Security Center Contact. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **alert_notifications** | string  | - | 
| **alerts_to_admins** | string  | - | 
| **email** | string  | - | 
| **name** | string  | - | 
| **phone** | int  | - | 
| **id** | string  | The Security Center Contact ID. | 