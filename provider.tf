provider "oci" {
  version = ">= 3.27.0"
  tenancy_ocid = var.tenancy_ocid
  user_ocid = var.user_ocid
  fingerprint = var.fingerprint
  private_key_path = var.private_key_path
  region = var.region
  # public_key_oci = var.public_key_oci
  # private_key_oci = var.private_key_oci
}
