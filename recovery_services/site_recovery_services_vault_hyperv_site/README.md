# azurerm_site_recovery_services_vault_hyperv_site

Manages a HyperV Site in Recovery Service Vault.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Recovery Service. Changing this forces a new Site to be created. | 
| **var.recovery_vault_id** | string | True | The ID of the Recovery Services Vault where the Site created. Changing this forces a new Site to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **recovery_vault_id** | string  | - | 
| **id** | string  | The ID of the Recovery Service. | 