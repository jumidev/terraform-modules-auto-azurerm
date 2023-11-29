# azurerm_attestation_provider

Manages an Attestation Provider.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Attestation Provider. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created. | 
| **policy_signing_certificate_data** | string | False | -  |  -  | A valid X.509 certificate (Section 4 of [RFC4648](https://tools.ietf.org/html/rfc4648)). Changing this forces a new resource to be created. | 
| **open_enclave_policy_base64** | string | False | -  |  -  | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **sgx_enclave_policy_base64** | string | False | -  |  -  | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **tpm_policy_base64** | string | False | -  |  -  | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **sev_snp_policy_base64** | string | False | -  |  -  | Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Attestation Provider. | 

