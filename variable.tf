variable "compartment_id" {
  type = string
  default =  "ocid1.compartment.oc1..aaaaaaaapqytcu462c27feapv4bvf2ijszoqm7qmqjn4mx3koz3o5tjt5ska"
}

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "private_key_oci" {}
variable "public_key_oci" {}

variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "service_ports" {
  default = [80,22,443]
}

variable "ADs" {
  default = ["unja:US-SANJOSE-1-AD-1","unja:US-SANJOSE-1-AD-2", "unja:US-SANJOSE-1-AD-3" ]
}

variable "Shapes" {
  default = ["VM.Standard.E2.1","VM.Standard.E2.1.Micro","VM.Standard2.1","VM.Standard.E2.1","VM.Standard.E2.2" ]
}

variable "Images" {
  default = ["ocid1.image.oc1.us-sanjose-1.aaaaaaaasuer4imvqelnx65zx4m26wfof5chorsj5gxegwatjbdgtsdfcygq"]
}