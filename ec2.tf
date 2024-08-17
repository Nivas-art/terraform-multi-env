resource "aws_instance" "expense"{
    for_each = var.instance_Names
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-0d639f0fbbb9a40c3"]
    instance_type = each.value

    tags = merge (
        var.common_tags,
        {
            name = each.key
            module = each.key
            environment = var.environment
        }
    )
}
