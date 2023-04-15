resource "aws_db_subnet_group" "db_subnet"{
 /*subnet_ids = [data.aws_subnet.pri_sub_id.id]*/
    
   subnet_ids = [local.pri_subnet_ids[0],local.pri_subnet_ids[1]]
}
resource "aws_db_instance" "db_instance"{
    identifier = var.db_instance_identifier
    allocated_storage = 20
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t2.micro"
    db_name = var.database_name
    username = var.database_user
    password = var.database_password
    parameter_group_name = "default.postgres13"
    skip_final_snapshot = true
    db_subnet_group_name = aws_db_subnet_group.db_subnet.name
    vpc_security_group_ids = [aws_security_group.db_sg.id]
    final_snapshot_identifier = "ignore"
}

