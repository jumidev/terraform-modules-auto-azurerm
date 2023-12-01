# azurerm_api_management_email_template

Manages a API Management Email Template.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_email_template" 
}

inputs = {
   template_name = "template_name of api_management_email_template" 
   api_management_name = "api_management_name of api_management_email_template" 
   resource_group_name = "${resource_group}" 
   subject = "subject of api_management_email_template" 
   body = "body of api_management_email_template" 
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
| **template_name** | string |  `AccountClosedDeveloper`, `ApplicationApprovedNotificationMessage`, `ConfirmSignUpIdentityDefault`, `EmailChangeIdentityDefault`, `InviteUserNotificationMessage`, `NewCommentNotificationMessage`, `NewDeveloperNotificationMessage`, `NewIssueNotificationMessage`, `PasswordResetByAdminNotificationMessage`, `PasswordResetIdentityDefault`, `PurchaseDeveloperNotificationMessage`, `QuotaLimitApproachingDeveloperNotificationMessage`, `RejectDeveloperNotificationMessage`, `RequestDeveloperNotificationMessage`  |  The name of the Email Template. Possible values are `AccountClosedDeveloper`, `ApplicationApprovedNotificationMessage`, `ConfirmSignUpIdentityDefault`, `EmailChangeIdentityDefault`, `InviteUserNotificationMessage`, `NewCommentNotificationMessage`, `NewDeveloperNotificationMessage`, `NewIssueNotificationMessage`, `PasswordResetByAdminNotificationMessage`, `PasswordResetIdentityDefault`, `PurchaseDeveloperNotificationMessage`, `QuotaLimitApproachingDeveloperNotificationMessage`, `RejectDeveloperNotificationMessage`, `RequestDeveloperNotificationMessage`. Changing this forces a new API Management Email Template to be created. | 
| **api_management_name** | string |  -  |  The name of the API Management Service in which the Email Template should exist. Changing this forces a new API Management Email Template to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the API Management Email Template should exist. Changing this forces a new API Management Email Template to be created. | 
| **subject** | string |  -  |  The subject of the Email. | 
| **body** | string |  -  |  The body of the Email. Its format has to be a well-formed HTML document. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Email Template. | 
| **title** | string | No  | The title of the Email Template. | 
| **description** | string | No  | The description of the Email Template. | 

Additionally, all variables are provided as outputs.
