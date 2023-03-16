# Sympa List Compressor

This Makefile can be used to compress the directories containing mailing lists for a specific domain using the tar command.

## Requirements

* GNU Make
* tar command

## Usage

1. Clone or download this repository to your local machine.
2. Open the terminal and navigate to the directory containing the Makefile.
3. Run the following command to compress the directories containing the mailing lists for the specified domain:

`make param DOMAIN=<domain>`

## Configuring the base directory

By default, this Makefile assumes that the mailing list directories are located in /var/lib/sympa. You can modify this by editing the .env file and setting the BASE_DIR variable to the path of the directory containing the mailing list directories.

Note that the path you set in the .env file must be an absolute path. For example, if your mailing list directories are located in /opt/lists, you would set BASE_DIR=/opt/lists.

## Cleaning up
To clean up the directory file and the compressed archive, run the following command:

`make clean`

This will delete the directories.txt file and the example.tar.gz archive.

