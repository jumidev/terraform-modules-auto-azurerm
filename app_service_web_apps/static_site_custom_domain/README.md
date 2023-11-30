# azurerm_static_site_custom_domain

Manages a Static Site Custom Domain.!> DNS validation polling is only done for CNAME records, terraform will not validate TXT validation records are complete.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/static_site_custom_domain" 
}

inputs = {
   domain_name = "domain_name of static_site_custom_domain" 
   static_site_id = "static_site_id of static_site_custom_domain" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.domain_name** | string | True | The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created. | 
| **var.static_site_id** | string | True | The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created. | 
| **var.validation_type** | string | False | One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Static Site Custom Domain. | 
| **validation_token** | string | No  | Token to be used with `dns-txt-token` validation. | 

Additionally, all variables are provided as outputs.
