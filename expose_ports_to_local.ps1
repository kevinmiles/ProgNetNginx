# Forward all the ports that the application uses (determined by ports mapped in docker-compose) to virtual box
# This is needed to use localhost in a browser which docker toolbox does not support
# Assumes that the VM is already running (uses controlvm see below article for syntax differences modifyvm where host not running)
# See: https://github.com/boot2docker/boot2docker/blob/master/doc/WORKAROUNDS.md
# If you get a set of E_FAIL errors concerning locking, reinstall Oracle VirtualBox's latest version.

VBoxManage controlvm "default" natpf1 "tcp-port5000,tcp,,5000,,5000";
VBoxManage controlvm "default" natpf1 "tcp-port3306,tcp,,3306,,3306";












