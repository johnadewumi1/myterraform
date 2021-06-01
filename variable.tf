variable "compartment_id" {
  default =  "ocid1.compartment.oc1..aaaaaaaapqytcu462c27feapv4bvf2ijszoqm7qmqjn4mx3koz3o5tjt5ska"
}

variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaajznex5attydtrmrgudwayqu7kn4krasw2ct4h4pwz7nwbfxoyd4q"
}
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaamrhp2f3m2evpmlme32kqavvgynxaz66oxfvrdephahsf72mwk6cq"
}
variable "fingerprint" {
  default = "39:00:25:bf:cf:9b:00:70:87:f5:75:74:7b:71:b1:40"
}
variable "private_key_path" {
  default = "/home/opc/credentials/oci_api_key.pem"
}
variable "region" {
  default = "us-sanjose-1"
}
variable "private_key_oci" {
  default = "/home/opc/credentials/id_rsa"
}
variable "public_key_oci" {
  default = "/home/opc/credentials/id_rsa.pub"
}

variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "service_ports" {
  default = [80,22,443]
}

variable "ADs" {
  default = ["unja:US-SANJOSE-1-AD-1"]
}

variable "Shapes" {
  default = ["VM.Standard.E2.1","VM.Standard.E2.1.Micro","VM.Standard2.1","VM.Standard.E2.1","VM.Standard.E2.2" ]
}

variable "Images" {
  default = ["ocid1.image.oc1.us-sanjose-1.aaaaaaaasuer4imvqelnx65zx4m26wfof5chorsj5gxegwatjbdgtsdfcygq"]
}