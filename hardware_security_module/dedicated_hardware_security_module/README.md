# azurerm_dedicated_hardware_security_module

Manages a Dedicated Hardware Security Module.-> **Note:** Before using this resource, it's required to submit the request of registering the providers and features with Azure CLI `az provider register --namespace Microsoft.HardwareSecurityModules && az feature register --namespace Microsoft.HardwareSecurityModules --name AzureDedicatedHSM && az provider register --namespace Microsoft.Network && az feature register --namespace Microsoft.Network --name AllowBaremetalServers` and ask service team (hsmrequest@microsoft.com) to approve. See more details from <https://docs.microsoft.com/azure/dedicated-hsm/tutorial-deploy-hsm-cli#prerequisites>.-> **Note:** If the quota is not enough in some region, please submit the quota request to service team.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Dedicated Hardware Security Module. Changing this forces a new Dedicated Hardware Security Module to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created. | 
| **network_profile** | block | True | -  |  -  | A `network_profile` block. | 
| **sku_name** | string | True | -  |  `payShield10K_LMK1_CPS60`, `payShield10K_LMK1_CPS250`, `payShield10K_LMK1_CPS2500`, `payShield10K_LMK2_CPS60`, `payShield10K_LMK2_CPS250`, `payShield10K_LMK2_CPS2500`, `SafeNet Luna Network HSM A790`  | The SKU name of the dedicated hardware security module. Possible values are `payShield10K_LMK1_CPS60`,`payShield10K_LMK1_CPS250`,`payShield10K_LMK1_CPS2500`,`payShield10K_LMK2_CPS60`,`payShield10K_LMK2_CPS250`,`payShield10K_LMK2_CPS2500` and `SafeNet Luna Network HSM A790`. Changing this forces a new Dedicated Hardware Security Module to be created. | 
| **management_network_profile** | block | False | -  |  -  | A `management_network_profile` block. | 
| **stamp_id** | string | False | -  |  `stamp1`, `stamp2`  | The ID of the stamp. Possible values are `stamp1` or `stamp2`. Changing this forces a new Dedicated Hardware Security Module to be created. | 
| **zones** | string | False | -  |  -  | Specifies a list of Availability Zones in which this Dedicated Hardware Security Module should be located. Changing this forces a new Dedicated Hardware Security Module to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Dedicated Hardware Security Module. | 

