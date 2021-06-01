resource "oci_core_instance" "johnserver" {

  compartment_id = var.compartment_id
  availability_domain = var.ADs
  shape = var.Shapes[0]
  source_details {
    source_type = "image"
    source_id = var.Images[0]
  }
  metadata ={
   ssh_authorized_keys = file(var.public_key_oci)
  }
  create_vnic_details {
    subnet_id = oci_core_subnet.publicsubnet.id
    assign_public_ip = true
  }
}

data "oci_core_vnic_attachments" "john_vnic_attach" {
  compartment_id = var.compartment_id
  availability_domain = var.ADs
  instance_id = oci_core_instance.johnserver.id
}

data "oci_core_vnic" "johnwebser_vnic" {
  vnic_id = data.oci_core_vnic_attachments.john_vnic_attach.vnic_attachments.0.vnic_id
}
output "webPublicIp" {
//  value = oci_core_instance.web.public_ip
  value = [data.oci_core_vnic.johnwebser_vnic.public_ip_address]

}