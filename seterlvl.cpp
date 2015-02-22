// Copyright (c) 2005-2015 Ross Smith II. See Mit LICENSE in /LICENSE

#ifndef WIN32_LEAN_AND_MEAN
# define WIN32_LEAN_AND_MEAN 1
#endif

#define _WIN32_WINNT 0x501

#include <windows.h>
#include <stdio.h>
#include <stdlib.h>

#include "Stackwalker.h"
#include "Optimize.h"
#include "SystemMessage.h"
#include "debug.h"
#include "getopt.h"

#include "version.h"

#define APPNAME			VER_INTERNAL_NAME
#define APPVERSION		VER_STRING2
#define APPCOPYRIGHT	VER_LEGAL_COPYRIGHT

static char *progname;

static char *short_options = "hv";

static struct option long_options[] = {
	{"version",			no_argument,		0, 'v'},
	{"v",				no_argument,		0, 'v'},
	{"help",			no_argument,		0, 'h'},
	{"h",				no_argument,		0, 'h'},
	{"?",				no_argument,		0, 'h'},
	{NULL,				0,					0, 0}
};

static void usage() {
	printf(
"Usage: %s [options]\n"
"Options:\n",
		progname
	);
/*2345678901234567890123456789012345678901234567890123456789012345678901234567890*/
	printf(
"-v | --version       Show version and copyright information and quit\n"
"-? | --help          Show this help message and quit\n"
);
}

/* per http://www.scit.wlv.ac.uk/cgi-bin/mansec?3C+basename */
static char* basename(char* s) {
	char* rv;

	if (!s || !*s)
		return ".";

	rv = s + strlen(s) - 1;

	do {
		if (*rv == '\\' || *rv == '/')
			return rv + 1;
		--rv;
	} while (rv >= s);

	return s;
}

int main(int argc, char **argv) {
#ifdef _DEBUG_ALLOC
    InitAllocCheck();
#endif
	progname = basename(argv[0]);

	int len = strlen(progname);
	if (len > 4 && _stricmp(progname + len - 4, ".exe") == 0)
		progname[len - 4] = '\0';

	opterr = 0;
	optind = 1;
	optreset = 1;

	while (1) {
		int c;
		int option_index = 0;

		if (optind < argc && argv[optind] && argv[optind][0] == '/')
			argv[optind][0] = '-';

		c = getopt_long(argc, argv, short_options, long_options, &option_index);

		if (opterr) {
			usage();
			exit(1);
		}

		if (c == -1)
			break;

		switch (c) {
			case 'v': // version
				printf("%s - Version %s - %s\n", APPNAME, APPVERSION, __DATE__);
				printf(APPCOPYRIGHT "\n\n");

				printf(
"This program is distributed in the hope that it will be useful,\n"
"but WITHOUT ANY WARRANTY; without even the implied warranty of\n"
"MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n"
"GNU General Public License for more details.\n");

				exit(0);
				break;

			case 'h': // help
				usage();
				exit(0);
				break;

			case ':':
				fprintf(stderr, "Option -%c requires an operand\n", optopt);
				usage();
				exit(1);

			default:
				int rv = 0;
				if (optind < argc && argv[optind])
					exit(atoi(argv[optind]));
				exit(atoi(argv[optind - 1]));
				usage();
				exit(1);
		}
	}

	unsigned int rv = 0;

	while (optind < argc) {
		rv = atoi(argv[optind++]);
	}

    exit(rv);
    return rv;
}
