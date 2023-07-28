#  A introduction to bioinformatics and computational biology at [ACEGID](https://acegid.org/)
## Unix 101: Part 1 - files and directories
Concept: Terminal lets you access the Unix system that lies beneath the fancy Mac/Ubuntu GUI.

## Before we begin
- [x] Download the file from here: `https://github.com/Jokendo-collab/aced/blob/main/UnixClass_120516.tar.gz`
- [ ] Double click on the file to uncompress it. It will create a directory (folder) call `UnixClass`.
- [ ] Drag the UnixClass directory to the `Desktop` folder on your Mac/Windows machine.

## 1.1 List directory contents and change working directory
| Run Terminal.app    | Find usinf Spotlight (/Applications/Utilities) |
| :---: | :---: |
| ls  | What's there?   |
| pwd | Where am I? |
| cd Desktop| Change directory|
| cd UnixClass | Tab to complete names |
| cd .. | change to parent directory |
| pwd | |
| ls /usr/bin | many of the utilities we are using "live" here |
| pwd | we haven't moved|
| ls UnixClass | list files in `Unixclass` directory |
| ls -l `UnixClass` | list the files in the Unixclass directory |
| cd  !$ | useful short-cut: last word of the previous cmd |
| ls -ltr | list files in order from oldest to newest ; not we can always combine single letter options|
| man ls | Manual (help) pages for most Unix commands|

**NOTE** that most puntuation characters have a specificic meaning and purposes in the Unix shell. For this reason it is generally a good idea to avoid using puntuation, including spaces, in filenames. The "safe" characters are letters, numbers, and _ [underscores], - [dash], and . [period]. Anything else will likely create a conflict with one program of the other. **ALSO** note that linux does not care about the last few characters of your file name.  

## Unix 101 Part 2: Viewing, counting, and searching text files
- [ ] **Concept:** Redirecting output, piping the output of one command to the input of the next command. 
- [ ] **Tasks:** See what's inside the files, even very large ones, and start to be able to summarize and search through the texts.
### 1.2 View file contents
|Command  | What it does/explanation|
| :---:| :---:|
|cat hgmd_brca1.txt |dump file contents to screen |
| less hgmd_brca1.txt | show one screen at a time |
| < down > or <enter> | line forward |
| < up > | line back |
| f or < space > | page forward |
| b | page back |
| g | go to start |
| G | go to end |
| q | quit |
| less hgmd_brca1.txt | show without wrapping test |
| < right > | page right |
| < left > | page left |
| q | quit |
**Interrupt a running program**
| cat | no file ; sit and wait |
| ctl-c | to interrupt [cancel ] running command |
**View first or last line of file**
| head hgmd_brca1.txt | first 10 lines |
| head -3 hgmd_brca1.txt | first three lines |
| tail hgmd_brca1.txt | last 10 lines |
| tail -1 hgmd_brca1.txt | last line |
**Count characters, words and lines**
| wc hgmd_brca1.txt | line, word, character count |
| wc -l hgmd_brca1.txt | just lines |
**Search for patterns, redirect output to a file**
| grep Ovar hgmd_brca1.txt | get some of them (How many?) |
| grep Ovar hgmd_brca1.txt > ovarian.txt | redirect output into file |
| wc -l  ovariant.txt | seem too small!! |
| less -S ovarian.txt | What's wrong? |
| grep ovar hgmd_brca1.txt > ovarian.txt | get the other [grep is case-sensitive] |
| wc -l ovarian.txt | note that we overwrote the original `ovarian.txt` file, no warning!|
| grep -i ovar hgmd_brca1.txt > ovarian.txt | gets all [ -i option makes it case-insensitive ]
| wc -l ovarian.txt || 
