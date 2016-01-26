#!/usr/local/bin/python2.7

import pysftp

try:
    # open connection to ftp server
    sftp = pysftp.Connection(host=ftp_host,
                             username=ftp_user,
                             password=ftp_pass,
                             port=int(ftp_port))

    sftp.pwd()

    # close the ftp connection
    sftp.close()

except Exception, e:
    print str(e)