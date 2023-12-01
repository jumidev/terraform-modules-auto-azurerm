# azurerm_nginx_certificate

Manages a Certificate for an NGinx Deployment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "nginx/nginx_certificate" 
}

inputs = {
   name = "name of nginx_certificate" 
   nginx_deployment_id = "nginx_deployment_id of nginx_certificate" 
   certificate_virtual_path = "certificate_virtual_path of nginx_certificate" 
   key_virtual_path = "key_virtual_path of nginx_certificate" 
   key_vault_secret_id = "key_vault_secret_id of nginx_certificate" 
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
| **name** | string |  The name which should be used for this Nginx Certificate. Changing this forces a new Nginx Certificate to be created. | 
| **nginx_deployment_id** | string |  The ID of the Nginx Deployment that this Certificate should be associated with. Changing this forces a new Nginx Certificate to be created. | 
| **certificate_virtual_path** | string |  Specify the path to the cert file of this certificate. | 
| **key_virtual_path** | string |  Specify the path to the key file of this certificate. | 
| **key_vault_secret_id** | string |  Specify the ID of the Key Vault Secret for this certificate. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this Nginx Certificate. | 

Additionally, all variables are provided as outputs.
