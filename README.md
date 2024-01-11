# Valentin-archi_infra
Valentin-archi Infra repository
# ДЗ 3
Для подключения к хосту, не имеющего публичного IP, через бастион, можно использовать proxy-jump ssh -J <bastion> <someinternalhost>
ssh -J appuser@158.160.61.21 appuser@10.128.0.12

Alias для someinternalhost
добавляем следующие параметры в /etc/ssh/ssh_config:
Host bastion
  User appuser
  Hostname 158.160.61.21

Host someinternalhost
  User appuser
  Hostname 10.128.0.12
  ProxyJump bastion

команда для подключения:
ssh someinternalhost

#VPN
bastion_IP=158.160.61.21
someinternalhost_IP=10.128.0.12
