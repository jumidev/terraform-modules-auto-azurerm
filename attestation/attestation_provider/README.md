# azurerm_attestation_provider

Manages an Attestation Provider.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "attestation/attestation_provider" 
}

inputs = {
   name = "name of attestation_provider" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **var.name** | string | True | The name which should be used for this Attestation Provider. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created. | 
| **var.policy_signing_certificate_data** | string | False | A valid X.509 certificate (Section 4 of [RFC4648](https://tools.ietf.org/html/rfc4648)). Changing this forces a new resource to be created. | 
| **var.open_enclave_policy_base64** | string | False | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **var.sgx_enclave_policy_base64** | string | False | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **var.tpm_policy_base64** | string | False | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **var.sev_snp_policy_base64** | string | False | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Attestation Provider. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Attestation Provider. | 
| **attestation_uri** | string | No  | The URI of the Attestation Service. | 
| **trust_model** | string | No  | Trust model used for the Attestation Service. | 

Additionally, all variables are provided as outputs.
