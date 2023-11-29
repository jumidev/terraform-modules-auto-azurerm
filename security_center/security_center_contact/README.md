# azurerm_security_center_contact

Manages the subscription's Security Center Contact.~> **NOTE:** Owner access permission is required.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **alert_notifications** | string | True | -  |  -  | Whether to send security alerts notifications to the security contact. | 
| **alerts_to_admins** | string | True | -  |  -  | Whether to send security alerts notifications to subscription admins. | 
| **email** | string | True | -  |  -  | The email of the Security Center Contact. | 
| **name** | string | False | `default1`  |  -  | The name of the Security Center Contact. Defaults to `default1`. | 
| **phone** | int | False | -  |  -  | The phone number of the Security Center Contact. | 

