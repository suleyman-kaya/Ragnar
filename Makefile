install:
	gcc ragnar.c -o ragnar -lX11 -lXcursor -lXft -O3 -ffast-math -Wall -Wextra
	cp ragnar /usr/bin/ragnar
ubuntu_install:
	gcc ragnar.c -o ragnar -I/usr/include/freetype2 -lX11 -lXcursor -lXft -O3 -ffast-math -Wall -Wextra
	cp ragnar /usr/bin/ragnar
clean:
	rm -f ragnar
	rm -f /usr/bin/ragnar
freetype:
	mv /usr/include/freetype/*  /usr/include/
