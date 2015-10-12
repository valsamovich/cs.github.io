# Data Engineering

Data engineers are the designers, builders and managers of the information or "big data" infrastructure. They develop the architecture that helps analyze and process data in the way the organization needs it. And they make sure those systems are performing smoothly. 

## `scp`

`scp` allows files to be copied to, from, or between different hosts. It uses ssh for data transfer and provides the same authentication and same level of security as `ssh`.

    scp <file> <env>:~/<directory>/     # Secure copy of the local to remote host  
    scp serde.sh PROD01:~/samovich/     # Example

    scp scp <env>:~/<directory>/<file>      # Secure copy from remote to local host
    scp scp PROD01:~/files/serde.ddl.sql .  # Example

## GZip

`gzip` is a file format and a software application used for file compression and decompression. 

    # to zip file(s) or directorie(s) 
    tar -zcvf [filename].gz [fileOrDirectory1] [fileOrDirectly2] [fileOrDirectoryN]
    
    # to unzip file(s) or directorie(s)
    tar -zxvf [filename].gz
