variable "compartment_id" {
  default = "ocid1.compartment.oc1..aaaaaaaapqytcu462c27feapv4bvf2ijszoqm7qmqjn4mx3koz3o5tjt5ska"
}

variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaajznex5attydtrmrgudwayqu7kn4krasw2ct4h4pwz7nwbfxoyd4q"
}
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaamrhp2f3m2evpmlme32kqavvgynxaz66oxfvrdephahsf72mwk6cq"
}
variable "fingerprint" {
  default = "80:3d:6d:28:1a:f7:82:94:0d:30:04:3f:e1:b9:3c:10"
}
variable "private_key_path" {
  default = "/home/opc/credentials/oci_api_key.pem"
}
variable "region" {
  default = "us-ashburn-1"
}
variable "private_key_oci" {
  default = "/home/opc/.ssh/id_rsa"
}
variable "public_key_oci" {
  default = "/home/opc/.ssh/id_rsa.pub"
}

variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "service_ports" {
  default = [80, 22, 443]
}

variable "ADs" {
  default = ["GrCh:US-ASHBURN-AD-1","GrCh:US-ASHBURN-AD-2"]
}

variable "Shapes" {
  default = "VM.Standard2.1"
}

variable "images" {
  default = ["ocid1.image.oc1.iad.aaaaaaaaijzevirp67bdceiebqeg4epuqstqcogohn3gskw76ngxupke3zfa"]
}
variable "johnserver_user" {
  description = "Login user name for johnserver"
  default     = "opc"
}


//variable "Images" {
//  default = ["ocid1.image.oc1.us-sanjose-1.aaaaaaaasuer4imvqelnx65zx4m26wfof5chorsj5gxegwatjbdgtsdfcygq"]
//}

//variable "operating_system" {
//  default = "Oracle Linux"
//}
//variable "operating_system_version" {
//  default = "7.7"
//}
