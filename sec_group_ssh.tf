
resource "openstack_networking_secgroup_v2" "tf-ssh" {
  name        = "tf-ssh"
  description = "[tf] Allw ssh connection"
}
resource "openstack_networking_secgroup_rule_v2" "tf-ssh-r1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "22"
  port_range_max    = "22"
  security_group_id = "${openstack_networking_secgroup_v2.tf-ssh.id}"
}
