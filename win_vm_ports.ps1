# Forward all the ports that Huddle uses (determined by ports mapped in docker-compose) to virtual box
# This is needed to prevent you falling apart when Huddle config asks for 'localhost' which docker toolbox does not support
# Assumes that the VM is already running (uses controlvm see below article for syntax differences modifyvm where host not running)
# See: https://github.com/boot2docker/boot2docker/blob/master/doc/WORKAROUNDS.md
# If you get a set of E_FAIL errors concerning locking, check that you are running as admin 

VBoxManage controlvm "default" natpf1 "http-port8080,tcp,,8080,,8080";
