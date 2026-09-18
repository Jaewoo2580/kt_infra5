#!/bin/bash

# 배포판 확인(Ubuntu)
if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" != "ubuntu" ]; then
        echo "Error : 이 스크립트는 우분투(Ubuntu) 전용입니다. (현재 OS: $NAME)"
        echo "스크립트 실행을 종료합니다."
        exit 1
    fi
else
    echo "Error : OS 배포판 정보를 확인할 수 없습니다."
    exit 1
fi

echo "우분투 환경 검증 완료 ($VERSION)"

# 1. Hostname 설정
sudo hostnamectl set-hostname s1
export HOSTNAME=s1

# 2. /etc/hosts 파일에 내용 자동으로 추가
sudo tee -a /etc/hosts > /dev/null << 'EOF'
127.0.1.1 s1
192.168.120.145 s1
192.168.120.146 x1
EOF
echo "호스트네임 설정 및 /etc/hosts 업데이트 완료"


# 3. [미완성] Static IP 설정 (***.***.***.145)

# 4. [미완성] UFW 방화벽 확인 및 설정

# 5. Swap 메모리 확인 및 완전 비활성화
sudo swapoff -a && sudo sed -i '/swap/s/^/#/' /etc/fstab
echo "Swap 메모리 비활성화 완료"

# 6. [미완성] Containerd Runtime 최적화 설정 구간

# 7. [미완성] Kernel Module & Parameter 설정 구간

# 8. [미완성] Kubectl / Kubeadm / Kubelet 패키지 설치 구간

# 9. [미완성] 최적화 검증 및 클러스터 초기화

# 10. 최종 쿠버네티스 클러스터 연결 및 설치 확인
if kubectl cluster-info &> /dev/null; then
    echo "쿠버네티스가 설치되어 있고 정상 작동 중입니다!"
else
    echo "쿠버네티스가 설치되지 않았거나 서버에 연결할 수 없습니다. 위 단계를 다시 확인하세요."
fi
