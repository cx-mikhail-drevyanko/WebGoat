resource "aws_security_group" "open_sg_02415" {
  name = "open_sg_02415"

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

resource "aws_security_group" "open_sg_02416" {
  name = "open_sg_02416"

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

resource "aws_security_group" "open_sg_02417" {
  name = "open_sg_02417"

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

resource "aws_security_group" "open_sg_02418" {
  name = "open_sg_02418"

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

resource "aws_security_group" "open_sg_02419" {
  name = "open_sg_02419"

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

resource "aws_security_group" "open_sg_02420" {
  name = "open_sg_02420"

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

resource "aws_security_group" "open_sg_02421" {
  name = "open_sg_02421"

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

resource "aws_security_group" "open_sg_02422" {
  name = "open_sg_02422"

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

resource "aws_security_group" "open_sg_02423" {
  name = "open_sg_02423"

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
