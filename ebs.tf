resource "aws_ebs_volume" "ebs" {
    count = "${var.create ? 1 : 0}"
    availability_zone = "${element(var.availability_zone, count.index)}"
    encrypted = "${var.encrypted}"
    kms_key_id = "${var.kms_key_id}"
    size = "${var.size}"
    type = "${var.type}"
}

resource "aws_volume_attachment" "ebs_att" {
  count = "${var.create ? 1 : 0}"
  device_name = "/dev/sdc"
  volume_id   = "${element(aws_ebs_volume.ebs.*.id, count.index)}"
  instance_id = "${element(var.instance_id, count.index)}"
}