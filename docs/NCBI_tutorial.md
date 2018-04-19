## FINDING EXONS- NCBI & BLAST

The goal of this tutorial is to get you comfortable with locating gene sequences using NCBI and BLAST for manual annotation.  

1.	Start by logging onto the [NCBI Gene Website](https://www.ncbi.nlm.nih.gov/gene)			
    - Enter the gene name & the species (equus caballus or horse) and hit Search 
    - This pulls up the reference genome (EquCab 3.0) which is a whole genome sequence for one individual horse that we can use for comparison.  Because this genome is from one individual there are potential broken genes.  Part of the process with manual annotation is determining if the differences between the horse & human genome are normal species variation or if the changes could indicate a potential mutation in a region.  The average person also has a bunch of potentially deleterious mutations, such as premature stop codons, frameshifts, missense mutations in highly conserved places that don’t end up leading to clinical disease. 
    
[NCBI Website Picture](assets/img/NCBI_website.jpg)

2.	Select the equine Gene from the search result list: 
    - Information is available on this screen  including the gene ID, description, location and position (Chr 26: 24,239,771-24,494,243). 

![Search Results Picture]()

3.	Once the gene is selected a lot more information can be obtained including the description of the gene, gene type, location and exon count.  Continuing further down on on this page will show diagrams of the gene, exons etc. 

![APP Gene Picture]()

4.	Begin by selecting the “Full Report” drop down in the upper left corner and change the format to “Gene Table”.  This will bring up a screen with the available transcripts and exons/coding sequence for review.  

[Gene Table Picture]()

5.	The “Gene Table” screen looks like the following with the diagram showing the entire gene above the available transcripts (in bold black ink).  Selection of the plus sign to the left of the Exon table lines will pull up available transcripts.   

[Gene Table Screen Picture]()

6.	Below is an example of a transcript that has been selected.  The transcript screen  shows the number of exons, total annotated exon length and the annotated AA length.  It is helpful to start by looking through all of the available transcripts for the horse genome (by clicking on all the plus signs) and selecting the largest transcript (by annotated AA length and number of coding exons) to begin with.  Then compare this equine transcript to the available human transcripts (there are normally more human transcripts available) and pick the transcript that is the match to the equine.  There may be times where they don’t match perfectly and then you should pick the largest human transcript available.  

[Exon Table Picture]()

7.	Once you have the largest horse transcript and the human transcript that matches it selected, you can move on to comparing the gene annotation between the two species.  The exon table is sorted into five columns that read Exon, Coding, Length (Exon), Length (Coding), and Intron.  The Exon and coding sequence columns will pull up the base pair sequence and correspond to the base pair lengths in column 3 (exon) & 4 (coding).  The intron column will pull up the intron base pair sequence.  

8.	This is what the individual coding sequence of the exon will look like with the base pair position located on the right of the screen.  

[Exon Sequence Picture]()

9.	Comparison of transcripts begins by looking at the number of the exons and associated base pair length.  It is important to ask yourself these questions as you are going through the comparison phase as it will drive the rest of the process.  A descriptive of how to find the answers to these questions is detailed below. 
    - Do the horse & human genome have same number of amino acids? 
    - Do the horse and human have the same number of exons? 
    - Are the exons the same length? Compare the exons and base pair lengths between both horse & human genomes.
    - Is there a 5’ and 3’ untranslated region?  
    - Is there a start codon (ATG)?
    - Are the splice junctions appropriate?  Do all intron regions begin with GT and end with AG?
    - Is there a stop codon (TAG, TAA, TGA)?
    - Are there n’s in the sequence? 

10.	 Do the horse & human genome have the same number of amino acids? This is located in the transcript description.   

[Amino Acid Picture]()

11.	 Do the horse & human have the same number of exons?  This can also be found on the transcript screen.  

[Exon picture]()

12.	Are the exons the same length?  Compare the base pair length of the human and horse genomes by looking at the coding length column.  The total exon length (column 3) includes the untranslated regions which can make it longer than the coding length (especially the first few and last few exons as this is where the 5’ and 3’ UTR would be located). 
    - For example in the picture below the first exon has an exon length of 260 base pairs and a coding length of 57 indicating that the first 203 base pairs of that exon is the 5’ UTR and the last 57 of the exon are the coding sequence.  The last exon has an exon length of 956 and coding length of 102 indicating the first 102 base pairs of that exon are the coding sequence which terminates in a stop codon and then 854 base pairs of the 3’ UTR are also included. 

[Exon length Picture]()

13.	 Is there a 5’ UTR and 3’ UTR?  
    - This can be assessed by looking at the difference between the exon & coding base pair lengths.  The 5’ and 3’ UTR would be included in the exon length but not in the coding length which helps determine if they are present at the start and end of the transcription.  If the exon length and coding length are the same for the first exon that would indicate there is no 5’ UTR.  The 5’ UTR is more commonly missing than the 3’ and that is due to it being a very GC rich region and harder to translate.  

14.	Is there a start codon (ATG)? 
    - The start codon should be the first three base pairs (ATG) of the first coding exon.  Select the first coding exon sequence from the second column to check for the start codon.  There may be times where the start codon is not located on exon 1 and might be located on exon 2 or 3 and this is because the 5’ UTR has spanned more than one exon.  

[Start Codon Picture]()


15.	Are the splice junctions appropriate? These correspond to the regions where the introns are removed (“spliced”) to form the coding sequence.  All of the intron regions should start with “GT” and end with “AG”. You can assess this in two ways: 
    - First you can select the intron sequences from column 5 of the transcript table and view the start and end of the sequence.  
    - OR you can select the coding sequences and extend the base pair length by two both upstream and downstream to include the end and start of the adjacent introns.  When doing it this way the first two letters on the sequence should be the ending “AG” of the preceding intron and the last two should be the starting “GT” of the next intron. 
    
[Splice Junction 1 Picture]()

[Splice Junction 2 Picture]()
  
16.	Does it contain a stop codon (TAG, TAA, TGA) prior to the start of the 3’ untranslated region?  This can be determined by looking at the coding sequence of the last coding exon in column two.  The exon length and coding lengths should differ for this exon as it should also contain the 3’ UTR.  Just as was the case with the 5’ UTR, the 3’ UTR is able to span multiple exons.  

[Stop Codon Picture]()

17.	Are there n’s in the sequence?

Once you have answered the above questions it is time to closer assess exons via BLAST.  Below is a description on how to do this process of comparing coding sequences.  Please also see the associated flowchart and tutorials on how to deal with common problems that may be encountered as you work through comparing human & horse genomes. 
