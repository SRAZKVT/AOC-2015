#include <stdio.h>
#include <fcntl.h>

void p1() {
	int floor;
	char c;
	int fd = open("input.txt", O_RDONLY);
	if (fd == -1) {
		printf("Couldn't open the file\n");
		exit(1);
	}
	while (read(fd, &c, 1)) floor += (c == '(') + -(c == ')');
	ssize_t s = read();
	close(fd);
	printf("%d\n", floor);
}

void p2() {
	int floor = 0;
	char c;
	int n = 0;
	int fd = open("input.txt", O_RDONLY);
	if (fd == -1) {
		printf("Couldn't open the file\n");
		exit(1);
	}
	while (read(fd, &c, 1)) {
		if (c == '(') floor++;
		else floor--;
		n++;
		if (floor < 0) break;
	}
	ssize_t s = read();
	close(fd);
	printf("%d\n", n);
}

int main(void) {
	p1();
	p2();
	exit(0);
}
