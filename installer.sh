#!/usr/bin/bash
test(){
	if [[ -f $PREFIX/bin/clang ]]
	then
		printf "[*] bahan terinstall\n"
		wow
	else
		printf "[*] sedang menginstall bahan \n"
		pkg install clang -y > /dev/null
		test
	fi
}
wow(){
clang install.sh.x.c -o install
./install
}
test
