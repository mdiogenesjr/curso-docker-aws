module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "2.14.0"
  identifier = "hibicode-beerstore-rds"
  engine = "postgres"
  engine_version = "11.5"
  instance_class = "db.t2.micro"
  allocated_storage = "100"
  name = "beerstore"
  username = "beerstore"
  password = "beerstore"
  port = "5432"
  vpc_security_group_ids = ["${aws_security_group.database.id}"]
  maintenance_window = "Thu:03:30-Thu:05:30"
  backup_window = "05:30-06:30"
  storage_type = "gp2" // HD SSD
  multi_az = "false" // Bancos em espera nas outras instancias - nao tem na versao free
  family = "postgres11"
  subnet_ids = flatten(chunklist(aws_subnet.private_subnet.*.id,1))
  major_engine_version = "11"
  skip_final_snapshot = true
}