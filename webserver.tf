resource "oci_core_instance" "web" {
  availability_domain = var.ADs[1]
  compartment_id = var.compartment_id
  shape = var.Shapes[0]
  display_name = "web"
  subnet_id = oci_core_subnet.publicsubnet.id
  source_details {
    source_id = "image"
    source_type = var.Images[0]
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
  availability_domain = var.ADs[1]
  instance_id = oci_core_instance.web.id
}

data "oci_core_vnic" "johnwebser_vnic" {
  vnic_id = data.oci_core_vnic_attachments.john_vnic_attach.vnic_attachments.0.vnic_id
}
output "webPublicIp" {
//  value = oci_core_instance.web.public_ip
  value = [data.oci_core_vnic.johnwebser_vnic.public_ip_address]

}