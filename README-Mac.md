# Mac에서 인프라 실습하기

이 압축 파일은 클라우드에서 작성한 실습 설정 파일입니다.
Mac의 다음 폴더에 압축을 푸세요:
/Users/gaeun/Downloads/workspace/25. Final-Project/Study/

압축 해제 후 구조:
  labs/docker-web/compose.yaml
  labs/terraform-local/main.tf

## Docker 웹 서버
Mac에 Docker Desktop을 설치하고 실행한 다음 터미널에서:

```bash
cd '/Users/gaeun/Downloads/workspace/25. Final-Project/labs/docker-web'
docker compose -p infra-learning up -d
curl --fail --retry 10 --retry-all-errors --retry-delay 1 http://127.0.0.1:18080/
```

응답에 Welcome to nginx!가 나타나면 성공입니다.
종료할 때 같은 폴더에서:

```bash
docker compose -p infra-learning down
```

## Terraform 로컬 실습
Mac용 Terraform CLI를 설치한 다음:

```bash
cd '/Users/gaeun/Downloads/workspace/25. Final-Project/labs/terraform-local'
terraform init
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

apply와 destroy는 계획을 확인한 뒤 yes로 진행합니다.
기본 예제는 terraform_data와 로컬 상태만 사용하므로 클라우드 계정이 필요하지 않습니다.

Docker 및 Terraform 실습은 클라우드 Linux에서 검증했습니다.
이 Mac의 도구 설치나 실행 상태는 아직 검증하지 않았습니다.
클라우드용 실행 파일, 인증 정보, Terraform 상태 파일은 이 압축 파일에 포함하지 않았습니다.
