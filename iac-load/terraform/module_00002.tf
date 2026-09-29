resource "aws_s3_bucket" "legacy_bucket_00020" {
  bucket = "legacy_bucket_00020-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00020_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00020.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00021" {
  bucket = "legacy_bucket_00021-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00021_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00021.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00022" {
  bucket = "legacy_bucket_00022-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00022_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00022.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00023" {
  bucket = "legacy_bucket_00023-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00023_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00023.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00024" {
  bucket = "legacy_bucket_00024-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00024_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00024.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00025" {
  bucket = "legacy_bucket_00025-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00025_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00025.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00026" {
  bucket = "legacy_bucket_00026-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00026_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00026.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00027" {
  bucket = "legacy_bucket_00027-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00027_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00027.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00028" {
  bucket = "legacy_bucket_00028-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00028_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00028.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00029" {
  bucket = "legacy_bucket_00029-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00029_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00029.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00030" {
  bucket = "legacy_bucket_00030-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00030_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00030.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_security_group" "open_sg_00000" {
  name = "open_sg_00000"

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

resource "aws_security_group" "open_sg_00001" {
  name = "open_sg_00001"

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

resource "aws_security_group" "open_sg_00002" {
  name = "open_sg_00002"

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

resource "aws_security_group" "open_sg_00003" {
  name = "open_sg_00003"

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

resource "aws_security_group" "open_sg_00004" {
  name = "open_sg_00004"

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

resource "aws_security_group" "open_sg_00005" {
  name = "open_sg_00005"

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

resource "aws_security_group" "open_sg_00006" {
  name = "open_sg_00006"

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

resource "aws_security_group" "open_sg_00007" {
  name = "open_sg_00007"

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

resource "aws_security_group" "open_sg_00008" {
  name = "open_sg_00008"

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
