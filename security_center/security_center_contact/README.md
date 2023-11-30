# azurerm_security_center_contact

Manages the subscription's Security Center Contact.~> **NOTE:** Owner access permission is required.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_contact" 
}

inputs = {
   alert_notifications = "alert_notifications of security_center_contact" 
   alerts_to_admins = "alerts_to_admins of security_center_contact" 
   email = "email of security_center_contact" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.alert_notifications** | string | True | -  |  Whether to send security alerts notifications to the security contact. | 
| **var.alerts_to_admins** | string | True | -  |  Whether to send security alerts notifications to subscription admins. | 
| **var.email** | string | True | -  |  The email of the Security Center Contact. | 
| **var.name** | string | False | `default1`  |  The name of the Security Center Contact. Defaults to `default1`. | 
| **var.phone** | int | False | -  |  The phone number of the Security Center Contact. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Security Center Contact ID. | 

Additionally, all variables are provided as outputs.
