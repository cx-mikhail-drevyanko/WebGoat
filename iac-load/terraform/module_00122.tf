resource "aws_security_group" "open_sg_01207" {
  name = "open_sg_01207"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_01208" {
  name = "open_sg_01208"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_01209" {
  name = "open_sg_01209"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_01210" {
  name = "open_sg_01210"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_01211" {
  name = "open_sg_01211"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "legacy_db_00000" {
  identifier              = "legacy_db_00000"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00001" {
  identifier              = "legacy_db_00001"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00002" {
  identifier              = "legacy_db_00002"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00003" {
  identifier              = "legacy_db_00003"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00004" {
  identifier              = "legacy_db_00004"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00005" {
  identifier              = "legacy_db_00005"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00006" {
  identifier              = "legacy_db_00006"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00007" {
  identifier              = "legacy_db_00007"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00008" {
  identifier              = "legacy_db_00008"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00009" {
  identifier              = "legacy_db_00009"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00010" {
  identifier              = "legacy_db_00010"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00011" {
  identifier              = "legacy_db_00011"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00012" {
  identifier              = "legacy_db_00012"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00013" {
  identifier              = "legacy_db_00013"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}

resource "aws_db_instance" "legacy_db_00014" {
  identifier              = "legacy_db_00014"
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  skip_final_snapshot     = true
}
