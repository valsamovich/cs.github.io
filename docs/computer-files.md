# Understanding Computer Files 

Data items can be stored on two broad types of storage devices in a computer system: 

- **Volatile storage** is temporary; values that are volatile, such as those stored in variables, are lost when a computer loses power. Random access memory (RAM) is the temporary 676 storage within a computer. When you write a java program that stores a value in a variable, you are using RAM. Most computer professionals simply call volatile storage memory.
- **Nonvolatile storage** is permanent storage; it is not lost when a computer loses power. When you write a Java program and save it to a disk, you are using permanent storage.

A **computer file** is a collection of data stored on a nonvolatile device. Files exist on **permanent storage devices**, such as hard disks, Zip disks, USB drives, reels or cassettes of magnetic tape, and compact discs. 

You can categorize files by the way they store data: 

- **Text files** contain data that can be read in a text editor because the data has been encoded using a scheme such as ASCII or Unicode. **Some text** files are data files that contain facts and figures, such as a payroll file that contains employee numbers, names, and salaries; some files are **program files** or **application files** that store software instructions. You have created many such files throughout this book.

- **Binary files** contain data that has not been encoded as text. Their contents are in binary format, which means that you cannot understand them by viewing them in a text editor. Examples include images, music, and the compiled program files with a .class extension that you have created using this book. 

Although their contents vary, files have many common characteristics—each file has a size that specifies the space it occupies on a section of disk or other storage device, and each file has a name and a specific time of creation. 

Computer files are the electronic equivalent of paper files stored in office file cabinets. When you store a permanent file, you can place it in the main or **root directory** of your storage device. If you compare computer storage to using a file cabinet drawer, saving to the root directory is equivalent to tossing a loose document into the drawer. However, for better organization, most office clerks place documents in folders, and most computer users organize their files into folders or directories. Users also can create folders within folders to form a hierarchy. A complete list of the disk drive plus the hierarchy of directories in which a file resides is its path. For example, the following is the complete path for a Windows file named Data.txt, which is saved on the C drive in a folder named Chapter.13 within a folder named Java: 

    C:\Java\Chapter.l3\Data.txt 

In the Windows operating system, the backslash ( \ ) is the **path delimiter** — the character used 677 to separate path components. In the Solaris (UNIX) operating system, a slash ( / ) is used as the delimiter.

When you work with stored files in an application, you typically perform the following tasks: 

- Determining whether and where a path or file exists 
- Opening a file 
- Writing to a file 
- Reading from a file 
- Closing a file 
- Deleting a file 

Java(programming language) provides built—in classes that contain methods to help you with these tasks.  
