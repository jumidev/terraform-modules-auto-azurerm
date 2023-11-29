# azurerm_cdn_frontdoor_secret

Manages a Front Door (standard/premium) Secret.## Required Key Vault Permissions!>**IMPORTANT:** You must add an `Access Policy` to your `azurerm_key_vault` for the `Microsoft.AzurefrontDoor-Cdn` Enterprise Application Object ID.This can be created by running Az Powershell command like this:```New-AzADServicePrincipal -ApplicationId "00000000-0000-0000-0000-000000000000"```| Object ID                                | Key Permissions | Secret Permissions   | Certificate Permissions                       ||:-----------------------------------------|:---------------:|:--------------------:|:---------------------------------------------:|| `Microsoft.Azure.Cdn` Object ID          | -               | **Get**              | -                                             || Your Personal AAD Object ID              | -               | **Get** and **List** | **Get**, **List**, **Purge** and **Recover**  || Terraform Service Principal              | -               | **Get**              | **Get**, **Import**, **Delete** and **Purge** |->**NOTE:** You only need to add the `Access Policy` for your personal AAD Object ID if you are planning to view the `secrets` via the Azure Portal.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Front Door Secret. Possible values must start with a letter or a number, only contain letters, numbers and hyphens and have a length of between 2 and 260 characters. Changing this forces a new Front Door Secret to be created. | 
| **cdn_frontdoor_profile_id** | string | True | -  |  -  | The Resource ID of the Front Door Profile. Changing this forces a new Front Door Secret to be created. | 
| **secret** | block | True | -  |  -  | A `secret` block. Changing this forces a new Front Door Secret to be created. | 

