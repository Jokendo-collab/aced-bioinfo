## Foundational coursework for incoming PhD students
We propose two foundational modules for incoming PhD students or advanced Master’s students: **1**) Introduction to Bioinformatics for Genome Assembly **2**) Introduction to python and the command line. The objective of these two concurrent modules is to develop the bioinformatic toolkit of students towards undertaking genomic research projects. The focus of the Bioinformatics course will initially be on creating genome assemblies from raw data and pathogen genomic epidemiology given ACEGID’s current portfolio of research, but successive courses will expand to e.g. human genomics, structural biology, statistical learning etc.

We propose that the training takes place over ten weeks, with two **120 minute** sessions a week. One session will be Introduction to Bioinformatics and the other Introduction to Python and the Command Line. The participants are encouraged to bring a working laptop – with a good RAM (preferably at least 8 GB) that can support a stable internet connection. The training will be funded by **ACEGID** and its partners.

We will conduct the attached demographic survey to calibrate the course according to the participants’ experience.
## Module: Introduction to bioinformatics
### Session 1: Introduction to Genomic Epidemiology
#### Session type: Theory
- [ ] Background information: Provide an overview on basic **terminologies** used in bioinformatics and both sequencing technologies.
- [ ] Limitations of classic epidemiology and what can genomic epidemiology tell us (zoonotic origin, timing, spatial origin of transmission, etc.)
- [ ] Evolutionary and mutational processes at different scales (time, space, host) and how to use them to reconstruct epidemic spread
- [ ] Basic phylogenetics introduction
- [ ] Sampling considerations: phylogenetic trees are not transmission trees
- [ ] What is a lineage, what is a clade, and what is a variant
- [ ] When does evolution matter and how to interpret changes in lineage frequencies over time (stochastic, epidemiologic, advantageous phenotypes, etc.)
- [ ] Why do changes in lineage frequencies (potentially) matter
- [ ] When do individual mutations matter and how to evaluate (proteins, immune escape, etc.)

## Instructors and their role
The list of the instructors can be found y clicking the following [link](https://docs.google.com/spreadsheets/d/1OLZyL4V7JmSLisOm3f2GOEFXQEbB6RmtNDbGein52zc/edit#gid=0)
## Session 2: Introduction to Bioinformatics for genome assembly
### Session type: Theory
- [ ] Pathogen agnostic conceptual overview of bioinformatic pipeline steps in and key file types (demux, primer trimming, assembly, etc.) 
- [ ] Introduction to key tools in bioinformatics 
- [ ] Metagenomics vs amplicon protocols

## Session 3+4: Matagenomic genome assembly in Terra
- [ ] Metagenomic assembly and assembly graph tangle resolution: https://github.com/hsnguyen/assembly/tree/master
- [ ] Matagenomic assembly and quality assessment using Genomescope, QUAST.py , jellyfish, merquiry etc
### Session type: Theory and practical
- [ ] Metagenomics vs amplicon protocols
- [ ] **Practical:** genome assembly in Terra
- [ ] **Practical:** evaluating assembly
- [ ] **Practical:** sequence similarity searching and basic BLAST usage.
- [ ] **Practical:** Kraken for metagenomics
## Session 5: Evaluating the assemblies qualities
### Session type: Theory and practical
- [ ] Assembly metrics (e.g., read depth, genome coverage, k-mer analysis)
- [ ] Negative and positive controls
- [ ] Assembly visualization: Integrative Genome Viewer, BandangeNG plots
- [ ] Manipulating Genomic Data 
- [ ] Include opening FASTA files, concatenating FASTA files, visualizing FASTA files in AliView

## Session 6+7: Genome assembly in the command line
### Session type: Theory and practical
- [ ] **PRACTICAL:** Assembly using command line tools
- [ ] Snakemake
- [ ] Variant calling and analysis and visualization
- [ ] Sandbox.io tutorials
## Session 8: Multiple Sequence Alignment
### Session type: Theory and practical
- [ ] Importance of alignment 
- [ ] Choosing a background dataset – including introduction to databases and retrieving sequences
[ ] Visualization in AliView
- [ ] **PRACTICAL:** Performing alignment with Mafft online server, performing Mafft in the command line
- [ ] Trimming/masking of alignments: We can highlight the hard and softmaskings 
- [ ] Frameshifting mutations
- [ ] NCBI for coding region starts and stops
## Session 9: Introduction to Phylogenetics
### Session type: Theory
- [ ] Basic concepts of phylogenetic trees: algorithms, rooting, molecular clock theory
- [ ] Tree interpretation 
- [ ] What you can and cannot say from a tree (sampling bias, etc.)
- [ ] When you can’t build a tree

## Session 10: Building and visualizing  a Maximum Likelihood Tree
### Session type: Theory and practical
- [ ] Maximum likelihood trees
- [ ] **Practical:** Iqtree web server, Iqtree on the command line
- [ ] Visualizing and annotating trees using FigTree
- [ ] Tree interpretation 
- [ ] Tie back to genomic epidemiology

## Suggested: Session 11+12: Bacterial bioinformatics 
- [x] Will decide based on demographic survey
- [ ] Introduction
- [ ] Assembly
- [ ] Annotation
- [ ] Comprehensive genomics analysis
- [ ] Phylogenetics analysis
- [ ] Visualization √

## Suggested: Session 13+14: Assembly with ONT data
Will decide based on demographic survey. 
In this section we shall discuss:
PacBio HiFi and ONT data quality control ; Highlight long read mapping tools.


## Module: Introduction to python and the command line
### Session 1 : Introduction to Linux operating system
- [ ] Introduction to Linux and PBS/slurm servers
Ubuntu
- [ ] Getting started with Linux/Unix interface
- [ ] Transferring files: From local machine to the server and from the server to the  local machine
- [ ] Streamlining data manipulation
## Session 2 : Introduction to linux command line
- [ ] Command Line using Linux
- [ ] Why Linux for bioinformatics?
- [ ] Input/Output
- [ ] Commonly used commands (`ls`, `mkdir`, `mv`, `rm`, `cp`, `tail`, `head`, `cat`, `grep`,  …)
- [ ] Working with directories and files (creating, modifying, searching, downloading, compressing)
- [ ] awk
## Session 3+4: Pipelines
- [ ] Shell scripting
- [ ] Loops in shell
- [ ] Highlight the importance of automation.
## Session 5+6: Introduction to python for bioinformatics
- [ ] Introduction to some python modules
- [ ] Overview of for loop and if statement
- [ ] Defining a function
- [ ] Generating random sequences 
- [ ] Extracting pattern from a sequence
- [ ] Generating reading frames
- [ ] Transcription and translation
## Session 7 : Introduction to Biopython
- [ ] DNA sequence manipulation (obtaining complement, reverse complement, translation to protein)
- [ ] Parsing fasta file format
- [ ] Parsing Genbank file format
## Session 8+9: Introduction to pandas
- [ ] Data structures
- [ ] Data selection and filtering
- [ ] Data manipulation
- [ ] Data cleaning 
## Session 10: Data visualization tools
- [ ] Introduction to matplotlib
- [ ] Introduction to seaborn
- [ ] Suggested Session 11: Nextflow
- [ ] Introduction to nextflow pipelines and how to configure them to run on our local server(s). 

- [ ] **Note**: Hands- exercised, assignments, and practical projects will be provided throughout the course to reinforce learning. Additionally, we shall encourage discussions, group activities to provide a well-rounded learning experience.

_________________

## Unix 101: Part 1 - files and directories
Concept: Terminal lets you access the Unix system that lies beneath the fancy Mac/Ubuntu GUI.

## Before we begin
- [x] Download the file from (https://github.com/Jokendo-collab/aced/blob/main/UnixClass_120516.tar.gz)
- [ ] Double click on the file to uncompress it. It will create a directory (folder) call `UnixClass`.
- [ ] Drag the UnixClass directory to the `Desktop` folder on your Mac/Windows machine.
**NOTE**: The materials to be used in this section are available in `scripts` directory.

## Training timetable
| Week | Session 1: Bioinformatics | Session 2: Coding |
| :---: | :---: | :---: |
| **1** | Introduction to Genomic Epidemiology | Introduction to Linux operating system |
| **2** | Introduction to Bioinformatics for genome assembly | Introduction to linux command line |
| **3** | Matagenomic genome assembly in Terra | Linux 101 |
| **4** | Matagenomic genome assembly in Terra | Bash scripting |
| **5** | Evaluating the assemblies qualities | Introduction to python for bioinformatics |
| **6** | Genome assembly in the command line | Introduction to python for bioinformatics |
| **7** | Genome assembly in the command line | Introduction to Biopython |
| **8** | Multiple Sequence Alignment | Introduction to pandas |
| **9** | Introduction to Phylogenetics | Introduction to pandas |
| **10** | Building and visualizing  a Maximum Likelihood Tree | Data visualization tools |



## Bioinformatics Training Survey for MSc/PhD Students

Dear Participant,

We are excited to invite you to participate in our bioinformatics training needs assessment survey for incoming PhD students. Your input is invaluable in helping us tailor our training programs to meet the evolving needs of the bioinformatics community. This survey aims to understand your background, interests, and preferences, so we can design effective and relevant training modules. Your responses will be kept confidential and used solely for research purposes.

Section 1: Personal Information

- [ ] Full Name:
- [ ] Email Address:
- [ ] Department/Program:
Year of MSc/PhD Enrollment:

Section 2: Background Information

What is your primary field of study within the life sciences? (e.g., biology, genetics, chemistry, etc.)
How familiar are you with bioinformatics? (Scale: Not at all - Somewhat - Moderately - Very - Extremely)
Have you received any formal bioinformatics training before? (Yes/No)
What is your proposed research topic? ( Max worlds: 50)

Section 3: Training Needs Assessment

Please rate the importance of the following bioinformatics topics for your PhD training, using the scale: (Not Important - Somewhat Important - Important - Very Important - Essential)

- [ ] Data preprocessing and quality control
- [ ] Sequence alignment and mapping
- [ ] Phylogenetic data analysis and interpretation
- [ ] Transcriptomics data analysis
- [ ] Network and pathway analysis
- [ ] Machine learning in bioinformatics
- [ ] High-throughput data visualization
- [ ] Statistical analysis in bioinformatics
- [ ] Comparative genomics
- [ ] Metagenomics analysis

Section 4: Additional Comments
Do you have any specific bioinformatics challenges or topics not mentioned above that you would like to address during your PhD training?

Any additional comments or suggestions you would like to let the trainers know to increase your training experience?


Section 5: Consent and Contact

By submitting this survey, you agree to participate voluntarily and understand that your responses will be used for research purposes only.

If you would like to receive updates about our bioinformatics training programs, please provide your email address below:

Email for Updates: [Textbox]

Thank you for participating in our survey! Your input will greatly assist us in enhancing our bioinformatics training offerings for incoming PhD students.




