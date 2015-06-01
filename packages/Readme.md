
# list-installed-packages.sh

Script that lists currently installed packages along with their description and install date.

## Output

Here's how the output looks:

```bash

# Private network P2P file synchronisation daemon(s)
# Sat May  2 16:52:20 IST 2015
apt-get install btsync

# Informational list of build-essential packages
# Sun Jan 18 20:08:56 IST 2015
apt-get install build-essential

# easy to use distributed version control system
# Thu Feb  5 22:14:29 IST 2015
apt-get install bzr

# text mode graphics utilities
# Tue Jan 27 18:55:52 IST 2015
apt-get install caca-utils

# An indicator for Google Calendar
# Fri May 29 08:26:05 IST 2015
apt-get install calendar-indicator

# A Python script that converts CHM files into PDF files
# Sun May 31 12:40:31 IST 2015
apt-get install chm2pdf

```

## Usage

1. Get a list of all packages:

  `bash list-installed-packages.sh > packages.sh`

2. Open the file, and comment packages that you don't want:

  `vim packages.sh`

3. Install:

  `sudo bash packages.sh`

## Todo

* Sort by installation date

* Improve speed

  Currently takes `46.27s user 7.65s system 100% cpu 53.446 total`
