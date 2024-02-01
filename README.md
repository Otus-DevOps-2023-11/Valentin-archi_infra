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

# ДЗ 4

testapp_IP = 51.250.94.66
testapp_port = 9292

# ДЗ 5
Packer base
перемещены скрипты установки install_mongodb.sh install_ruby.sh в директорию scripts
установлен Packer
создан сервисный аккаунт для YC
добавлен плагин packer для yandex
создан файл шаблона пакер ubuntu16.json
провалидирован файл шаблона
запущена ВМ с диском, который сконфигурирован согласно нашему шаблону.
произведено параметизирование приложения
variables.json перенесен в .gitignore
добавлены опции билдера.
