# azurerm_nginx_certificate

Manages a Certificate for an NGinx Deployment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Nginx Certificate. Changing this forces a new Nginx Certificate to be created. | 
| **nginx_deployment_id** | string | True | -  |  -  | The ID of the Nginx Deployment that this Certificate should be associated with. Changing this forces a new Nginx Certificate to be created. | 
| **certificate_virtual_path** | string | True | -  |  -  | Specify the path to the cert file of this certificate. | 
| **key_virtual_path** | string | True | -  |  -  | Specify the path to the key file of this certificate. | 
| **key_vault_secret_id** | string | True | -  |  -  | Specify the ID of the Key Vault Secret for this certificate. | 

