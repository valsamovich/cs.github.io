## How to Download Files Using `wget` and `curl`

On a high-level, both wget and curl are command line utilities that do the same thing.

## `wget`

- Used to download files using **FTP** and **HTTP(s)**.
- Can also send **HTTP POST** request.
- wget is just a command-line tool without any **API**s.
- Supports recursive download, while `curl` doesn’t.

Downloads the file and stores in the same name as the remote server.

    wget [url]
    wget http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2

Download the file and stores in a different name than the remote server.

    wget -O [filename] [url]
    wget -O taglist.zip http://www.vim.org/scripts/download_script.php?src_id=7701

## `curl`

- Provides **APIs** that can be used by programmers inside their own code. 
- Uses **libcurl** which is a cross-platform library.
- Supports protocols : `SCP`, `SFTP`, `TFTP`, `TELNET`, `LDAP(S)`, `FILE`, `POP3`, `IMAP`, `SMTP`, `RTMP` and `RTSP`.

Option `-O` (upper-case O) is important. Without this, `curl` will start dumping the downloaded file on the stdout. Using `-O`, it downloads the files in the same name as the remote server.

    curl -O http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2
