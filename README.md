# Introduction to bioinformatics

ACEGID introduction to bioinformatics course outline. The following topics will be covered to help introduce the students and researchers to fundamentals of bioinformatics. 

### 1. Introduction to Bioinformatics
   - [x] Overview of bioinformatics and its applications in biology and medicine.
   - [x] Introduction to biological databases and data types (sequences, structures, gene expressions, etc.).
   - [x] Overview of key computational tools and resources in bioinformatics.

### 2. Biological Data Retrieval and Manipulation
   - [ ] Introduction to sequence data (DNA, RNA, protein) and file formats (FASTA, GenBank).
   - [ ] Retrieving sequences from databases and local files.
   - [ ] Sequence alignment algorithms and pairwise sequence alignment.
   - [ ] Introduction to sequence databases (NCBI, UniProt) and their search tools.

### 3. Sequence Analysis
   - [ ] Multiple sequence alignment and its applications.
   - [ ] Phylogenetic analysis and tree construction.
   - [ ] Introduction to sequence similarity searching and basic BLAST usage.
   - [ ] Introduction to sequence motif analysis and identification.

### _4. Structural Bioinformatics_
   - [ ] Introduction to protein structure and its representation.
   - [ ] Protein structure databases (PDB) and their tools.
   - [ ] Homology modeling and structure prediction.
   - [ ] Introduction to protein-ligand interactions and drug discovery.

### 5. Genomics and Transcriptomics
   - [ ] Introduction to genome sequencing and assembly.
   - [ ] Annotation of genomes and gene prediction.
   - [ ] Introduction to RNA sequencing (RNA-Seq) and data analysis.
   - [ ] Gene expression analysis and differential expression.

### 6. Data Visualization and Analysis
   - [ ] Introduction to data visualization techniques in bioinformatics.
   - [ ] Exploratory data analysis and statistical analysis.
   - [ ] Introduction to R and its bioinformatics packages.
   - [ ] Visualization and interpretation of biological networks and pathways.

### 7. Introduction to Machine Learning in Bioinformatics
   - [ ] Overview of machine learning techniques and their applications.
   - [ ] Introduction to classification and regression in bioinformatics.
   - [ ] Feature selection and dimensionality reduction.
   - [ ] Hands-on exercises using machine learning tools in bioinformatics.

### 8. Practical Projects
   - [ ] Assign hands-on projects to apply the knowledge gained throughout the course.
   - [ ] Provide real-world datasets and guide students in solving bioinformatics problems.
   - [ ] Encourage students to explore additional topics of interest and present their findings.

### 9. Ethical and Legal Considerations
   - [ ] Discuss ethical considerations in bioinformatics research.
   - [ ] Overview of data privacy, security, and intellectual property.
   - [ ] Responsible conduct of research and publication ethics.

### 10. Emerging Trends in Bioinformatics
  - [ ] Introduce students to emerging areas like metagenomics, single-cell sequencing, and precision medicine.
 - [ ] Discuss recent advances and future directions in bioinformatics research.

**Note**: Hands- exercised, assignments, and practical projects will be provided throughout the course to reinforce learning. Additionally, we shall encourage discussions, group activities to provide a well-rounded learning experience.

### Sequence assembly (De novo and reference guided assembly)

_________________

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



