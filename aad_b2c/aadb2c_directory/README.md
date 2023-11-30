# azurerm_aadb2c_directory

Manages an AAD B2C Directory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "aad_b2c/aadb2c_directory" 
}

inputs = {
   data_residency_location = "data_residency_location of aadb2c_directory" 
   domain_name = "domain_name of aadb2c_directory" 
   resource_group_name = "${resource_group}" 
   sku_name = "sku_name of aadb2c_directory" 
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
| **var.data_residency_location** | string  `Asia Pacific`, `Australia`, `Europe`, `Global`, `United States`  |  Location in which the B2C tenant is hosted and data resides. The `data_residency_location` should be valid for the specified `country_code`. See [official docs](https://aka.ms/B2CDataResidenc) for more information. Changing this forces a new AAD B2C Directory to be created. Possible values are `Asia Pacific`, `Australia`, `Europe`, `Global` and `United States`. | 
| **var.domain_name** | string  -  |  Domain name of the B2C tenant, including the `.onmicrosoft.com` suffix. Changing this forces a new AAD B2C Directory to be created. | 
| **var.resource_group_name** | string  -  |  The name of the Resource Group where the AAD B2C Directory should exist. Changing this forces a new AAD B2C Directory to be created. | 
| **var.sku_name** | string  `PremiumP1`, `PremiumP2`, `Standard`  |  Billing SKU for the B2C tenant. Must be one of: `PremiumP1` or `PremiumP2` (`Standard` is not supported). See [official docs](https://aka.ms/b2cBilling) for more information. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.country_code** | string  Country code of the B2C tenant. The `country_code` should be valid for the specified `data_residency_location`. See [official docs](https://aka.ms/B2CDataResidency) for valid country codes. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created. | 
| **var.display_name** | string  The initial display name of the B2C tenant. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created. | 
| **var.tags** | map  A mapping of tags which should be assigned to the AAD B2C Directory. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the AAD B2C Directory. | 
| **billing_type** | string | No  | The type of billing for the AAD B2C tenant. Possible values include: `MAU` or `Auths`. | 
| **effective_start_date** | datetime | No  | The date from which the billing type took effect. May not be populated until after the first billing cycle. | 
| **tenant_id** | string | No  | The Tenant ID for the AAD B2C tenant. | 

Additionally, all variables are provided as outputs.
