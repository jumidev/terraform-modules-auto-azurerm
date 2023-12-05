# azurerm_security_center_contact

Manages the subscription's Security Center Contact.~> **NOTE:** Owner access permission is required.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "security_center/security_center_contact"   
}

inputs = {
   alert_notifications = "Whether to send security alerts notifications to the security contact..."   
   alerts_to_admins = "Whether to send security alerts notifications to subscription admins..."   
   email = "The email of the Security Center Contact"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **alert_notifications** | string |  Whether to send security alerts notifications to the security contact. | 
| **alerts_to_admins** | string |  Whether to send security alerts notifications to subscription admins. | 
| **email** | string |  The email of the Security Center Contact. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  `default1`  |  The name of the Security Center Contact. Defaults to `default1`. | 
| **phone** | int |  -  |  The phone number of the Security Center Contact. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Security Center Contact ID. | 

Additionally, all variables are provided as outputs.
