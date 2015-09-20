all:
	sudo chown -R root:root airootfs
	sudo rm -r -f work
	sudo ./build.sh -N archrescue -v
