# azurerm_site_recovery_services_vault_hyperv_site

Manages a HyperV Site in Recovery Service Vault.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/site_recovery_services_vault_hyperv_site" 
}

inputs = {
   name = "name of site_recovery_services_vault_hyperv_site" 
   recovery_vault_id = "recovery_vault_id of site_recovery_services_vault_hyperv_site" 
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
| **var.name** | string |  The name which should be used for this Recovery Service. Changing this forces a new Site to be created. | 
| **var.recovery_vault_id** | string |  The ID of the Recovery Services Vault where the Site created. Changing this forces a new Site to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Recovery Service. | 

Additionally, all variables are provided as outputs.
