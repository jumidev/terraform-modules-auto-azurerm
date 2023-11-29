# azurerm_attestation_provider

Manages an Attestation Provider.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Attestation Provider. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created. | 
| **var.policy_signing_certificate_data** | string | False | -  |  -  | A valid X.509 certificate (Section 4 of [RFC4648](https://tools.ietf.org/html/rfc4648)). Changing this forces a new resource to be created. | 
| **var.open_enclave_policy_base64** | string | False | -  |  -  | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **var.sgx_enclave_policy_base64** | string | False | -  |  -  | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **var.tpm_policy_base64** | string | False | -  |  -  | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **var.sev_snp_policy_base64** | string | False | -  |  -  | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Attestation Provider. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **policy_signing_certificate_data** | string  | - | 
| **open_enclave_policy_base64** | string  | - | 
| **sgx_enclave_policy_base64** | string  | - | 
| **tpm_policy_base64** | string  | - | 
| **sev_snp_policy_base64** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Attestation Provider. | 
| **attestation_uri** | string  | The URI of the Attestation Service. | 
| **trust_model** | string  | Trust model used for the Attestation Service. | 