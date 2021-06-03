resource "oci_core_instance" "johnserver2" {

  compartment_id      = var.compartment_id
#   availability_domain = data.template_file.ad_names.*.rendered[0]
  availability_domain = lookup(data.oci_identity_availability_domains.ad.availability_domains[0], "name")
  shape               = var.Shapes
  display_name        = "johnserver2"
  subnet_id           = oci_core_subnet.publicsubnet.id
    fault_domain        = "FAULT-DOMAIN-2"

  source_details {
    source_type = "image"
    source_id   = lookup(data.oci_core_images.oraclelinux-7-7.images[0],"id")
  }
  metadata = {
    ssh_authorized_keys = file(var.public_key_oci)
  }
  create_vnic_details {
    subnet_id        = oci_core_subnet.publicsubnet.id
    assign_public_ip = true
  }
}

data "oci_core_vnic_attachments" "john_vnic_attach2" {
  compartment_id      = var.compartment_id
#   availability_domain = data.template_file.ad_names.*.rendered[0]
  availability_domain = lookup(data.oci_identity_availability_domains.ad.availability_domains[0], "name")
  instance_id         = oci_core_instance.johnserver2.id
}

data "oci_core_vnic" "johnwebser2_vnic" {
  vnic_id = data.oci_core_vnic_attachments.john_vnic_attach2.vnic_attachments.0.vnic_id
}

output "webPublicIp2" {
  //  value = oci_core_instance.web.public_ip
  value = [data.oci_core_vnic.johnwebser2_vnic.public_ip_address]

}