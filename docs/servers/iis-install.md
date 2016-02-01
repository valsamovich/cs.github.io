# Installing IIS 

## IIS Software installation steps.

1. Go to Control Panel, and click on Programs. 
2. Click the link for “Turn Windows features on or off” (inside Programs and Features section).
3. Receive the Windows Security warning dialog box. Click Allow to continue. The Windows Features dialog box is displayed.
4. Click on Expand the Internet Information Services tree node (some options are already checked: Web Management Tools and World web Services). 
5. Click OK and windows dialog Box was appear for installation (Progress indicator).
6. Navigate the browser to an http://localhost. (to start IIS Manager type inetmgr in the Search Programs and Files).

 
Questions:

1. List what OS you are using when you installed IIS: Windows 7.

2. IIS from the help information on Microsoft’s Web Site on IIS. 
a. How to change the home directory in IIS? Moving the c:\inetpub directory to a different drive has to be done after setup completes. The folders need to be recreated and IIS MMC set with the new web root and same for SMTP. 
To change the root directory for the web site: Open IIS Manager first. Expand the Home path in Connection tab and click on Sites folder. Right click on Web Site in the middle panel > Basic Settings. Change the physical path (the default is: %SystemDrive%\inetpub\wwwroot).

b. What directories remain on your system after you uninstall IIS?
Inetpub plus four sub directories (custerr, history, logs and temp)
 
c. What is Fortezza? Fortezza is an information security system that implements NIST/NSA cryptographic algorithms.  A Fortezza Crypto Card is a PC Card based security token.

d. What is a Virtual Directory and how are they created? A virtual directory is a directory name (also referred to as path) that specify in IIS and map to a physical directory on a local or remote server. The directory name then becomes part of the application's URL. To create a Virtual Directory expands the Sites node in the files tree inside connection panel and click to select the web site. In the Actions panel, click View Virtual Directories. On the Virtual Directory panel, in the Actions panel, click Add Virtual Directory. Another way to create a Virtual Directory is to right click the Web site>Add Virtual directory. Another way to Add Virtual Directory is a right click on selected web site and chooses Add Virtual Directory. 

 e. How do you “name” a web site in IIS? Can you have multiple sites on the same IIS server? To “name” the web sites in IIS expand the Sites node in connectional panel and right click on the Sites folder. From menu choose an Add Web Site. Inside this windows choose Site name, Application pool, Physical Path and Binding option. IIS Server can have multiple sites. Host headers enable you to assign multiple sites to one IP address on a Web server, without assigning a unique IP address to each Web site

f. How do you add a Web Site Operator to IIS? A Web site operator is a “Web site administrator” and can change or reconfigure the Web site. To add an operator to the Web site: 1.In the Internet Information Services, right-click the Web site and click Properties. 
2. On the Operators tab, under Web Site Operator, click Add. 
3. Either select a user or group from the Names list, or select another name list from the List.
4. Select a member from a group of users by clicking and selecting the member from the window.
** Those steps is compatible for Windows Server 2003, Windows Server 2003

g. How do you use Remote Administration? What do you need to do to enable this feature?
Manager for Remote Administration allows users to more securely manage remote Web sites and applications on IIS 7.0 servers over a firewall-friendly connection using HTTP over SSL. To enable Remote Administration on Windows Server 8: 1.Install the Web Management Service from Windows features and (WMSVC). 2. Enable remote connections from Action panel in IIs manager. On Windows 7 to enable Remote Administration the Administrator need to be a member of Administrator group.
** To use remote Administration on Windows 7 the IIS Manager for Remote Administration need to be installed (http://www.iis.net/download/iismanager). 

h. What are the two ways of “name resolution” on IIS? Where is the HOSTS file located? The process of translating a domain name to an IP address is called name resolution. The address takes a form of a string of four number separated by periods (for example, 192.168.1.42). 
Because a numeric address is difficult for people to remember, text names, or domain names, are used (for example, www.example.com). The hosts file is located C\Windows\system32\drivers\etc.

3. What should you do to (according to the documentation) setup IIS security? Configuring Authentication in IIS 7, Configuring IPv4 Address and Domain Name Rules (IIS 7), Configuring URL Authorization Rules in IIS 7, Configuring Server Certificates in IIS 7,Configuring ISAPI and CGI Restrictions in IIS 7, Configuring Secure Sockets Layer in IIS 7, Configuring Request Filters (IIS 7), Configuring Shared Configuration (IIS 7)

4. Of the Authentication Methods in IIS which are of a “high” security level? Why are they high? Certificate authentication method has high security level (this authentication method uses Secure Sockets Layer (SSL) certificates to authenticate servers and clients).
.NET Passport Authentication. This authentication method is a user-authentication service that lets Web site users to create a single sign-in name and password for access to all .NET Passport–enabled Web sites and services. .NET Passport–enabled sites rely on the .NET Passport central server to authenticate users; .NET Passport–enabled sites do not host and maintain their own proprietary authentication systems. 

5. Under “Enabling and Configuring Authentication” in the Security information read the information on Configuring Basic Authentication. How is this done? Now – go and do it!!
Basic Authentication Method can be enabled from Windows Features (IIS\World Wide Web Services\Security\Basic Authentication). Co configures the IIS Manager Component double click on Authentication from Features View (IIS Area) and change the status from Disabled to enabled. The Anonymous Authentication can be disabled. Because the first request that all browsers send to a Web server is for anonymous access to server content. If  don’t disable Anonymous Authentication, users can access all the content on your server anonymously, including restricted content.

6. How do you secure your site with NTFS? It’s possible to assign strong NTFS permissions or most restrictive Web permission for your resources. The NTFS file system is more secure than the FAT or FAT32 file system. 

7. How do you set Web Server permissions in IIS? The Web Server permission for web Server content can be set by properties of the files or folders. Either click to select or click to clear any of the following check boxes (if present) that are appropriate for the level of Web permissions that you want to set.

8. What does Microsoft recommend about “Capacity Planning” – this can be for IIS 6 or earlier? Check http://www.microsoft.com/technet/ and search on IIS Capacity Planning.
Capacity Planning is the process of determining the production capacity needed by an organization to meet changing demands for its products. Microsoft suggest to run the server with the stress test and see how many requests per seconds the installation processed at (or close to) 100 percent CPU saturation. The stress test includes WCAT (Web Capacity Analysis tool) configuration file to run virtual clients. Test needs to be run for about 10 minutes and
Administrator can monitor the test and make the conclusion based on traffic estimates. First Stress test for capacity planning was included in the IIS Resource Kit Tool for IIS 6.0.

9. If you needed to be able to transmit 500 pages per second (assume each page is 100KB what type of connection would you need from your server to the Internet? Think about transmission speeds (upload and download) for a connection (T1, T2, T3, etc.).
OC-3 (Optical Carrier) connection or higher. With connection OC-12 will be less than a seconds.

IIS 7 (7.5) is completely modular. What does this mean? See http://www.iis.net/overview
The Internet Information Services 7.5 has modularized installation process. The modular setup is made up of more than 40 separate feature modules allowing for complete customization when deploying IIS 7.5. The modules, also known as “role services” or ”components” that can be selected during the installation process.
