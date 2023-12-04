# azurerm_cdn_frontdoor_secret

Manages a Front Door (standard/premium) Secret.## Required Key Vault Permissions!>**IMPORTANT:** You must add an `Access Policy` to your `azurerm_key_vault` for the `Microsoft.AzurefrontDoor-Cdn` Enterprise Application Object ID.This can be created by running Az Powershell command like this:```New-AzADServicePrincipal -ApplicationId "00000000-0000-0000-0000-000000000000"```| Object ID                                | Key Permissions | Secret Permissions   | Certificate Permissions                       ||:-----------------------------------------|:---------------:|:--------------------:|:---------------------------------------------:|| `Microsoft.Azure.Cdn` Object ID          | -               | **Get**              | -                                             || Your Personal AAD Object ID              | -               | **Get** and **List** | **Get**, **List**, **Purge** and **Recover**  || Terraform Service Principal              | -               | **Get**              | **Get**, **Import**, **Delete** and **Purge** |->**NOTE:** You only need to add the `Access Policy` for your personal AAD Object ID if you are planning to view the `secrets` via the Azure Portal.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_secret" 
}

inputs = {
   name = "name of cdn_frontdoor_secret" 
   cdn_frontdoor_profile_id = "cdn_frontdoor_profile_id of cdn_frontdoor_secret" 
   secret = {
      example_secret = {
         customer_certificate = "..."   
      }
  
   }
 
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
| **name** | string |  The name which should be used for this Front Door Secret. Possible values must start with a letter or a number, only contain letters, numbers and hyphens and have a length of between 2 and 260 characters. Changing this forces a new Front Door Secret to be created. | 
| **cdn_frontdoor_profile_id** | string |  The Resource ID of the Front Door Profile. Changing this forces a new Front Door Secret to be created. | 
| **secret** | [block](#secret-block-structure) |  A `secret` block. Changing this forces a new Front Door Secret to be created. | 

### `secret` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `customer_certificate` | [block](#secret-block-structure) | Yes | - | A 'customer_certificate' block. Changing this forces a new Front Door Secret to be created. |

### `customer_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_certificate_id` | string | Yes | - | The ID of the Key Vault certificate resource to use. Changing this forces a new Front Door Secret to be created. |
| `subject_alternative_names` | list | No | - | (Computed) One or more 'subject alternative names' contained within the key vault certificate. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Secret. | 
| **cdn_frontdoor_profile_name** | string | No  | The name of the Front Door Profile containing this Front Door Secret. | 

Additionally, all variables are provided as outputs.
