#! /bin/bash

# This script generates documentation files based on the names of the missing biocontainers in listofmissingfiles.txt and then updates index.rst based on files in the 'source' folder
# listofmissingfiles.txt can be generated using generatelistofmissingfiles.sh
# Example Usage: ./generatedocumentation.sh
# Warning: Will not work if listofmissingfiles.txt does not exist
# Verify biocontainer input and documentation output paths before running

# Generate documentation for missing files using listofmissingfiles.txt

current_dir="$PWD" # save current directory 
cd ../../ # go up two directories
repo_path="$PWD" # assign path to repo_path
cd $current_dir # cd back to current directory

readarray -t listofmissingfiles < listofmissingfiles.txt

for filename in ${listofmissingfiles[@]}; do
   echo $filename

   inputfolder="$repo_path/module_files/$filename/"
   echo "input folder: "$inputfolder

   filenamesarray=`ls $inputfolder*`
   for eachfile in $filenamesarray
   do
      inputpath=$eachfile #This assumes last file name in alphabetical order is the file to parse
   done
   echo "input path: "$inputpath

   containername=$(echo $inputpath | awk -F/ '{print $(NF-1)}')

   # outputfile="$containername.rst"
   outputfile="$repo_path/docs/source/$containername/$containername.rst"
   echo "output file: "$outputfile

   inputpathcontent=$(<$inputpath)  

   mkdir -p $repo_path/docs/source/$containername

   echo ".. _backbone-label:" > $outputfile
   echo "" >> $outputfile
   echo "${containername^}" >> $outputfile
   echo "==============================" >> $outputfile
   echo "" >> $outputfile
   echo "Introduction" >> $outputfile
   echo "~~~~~~~~" >> $outputfile
#   description=$(echo $inputpathcontent | sed -e 's/Description/\nDescription\n/' -e 's/More information/\nMore information\n/' | sed -n '/Description/,/More information/{//!p}')
   description=$(grep "module-whatis" $inputpath | grep "Description" | sed "s/module-whatis//g | awk '{$1=$1};1'")
#   description=$(echo $description | sed 's/=//g')
   echo $description >> $outputfile
   echo "\n" >> $outputfile
   echo "" >> $outputfile
#   echo "| For more information, please check:" >> $outputfile
#   moreinformation=$(echo $inputpathcontent | sed -e 's/More information/\nMore information\n/' -e 's/]==])/\n]==])\n/' | sed -n '/More information/,/]==])/{//!p}')
#   moreinformation=$(echo $moreinformation | sed 's/=//g')
#   moreinformation=$(echo $moreinformation | sed 's/-//')
#   echo "|" $moreinformation | sed 's/- /\n| /g' >> $outputfile
   echo "" >> $outputfile
   echo "Versions" >> $outputfile
   echo "~~~~~~~~" >> $outputfile
   for eachfile in $filenamesarray
   do
      echo -n "- " >> $outputfile
      echo $eachfile
#      eachfile=$(grep -o '[^,]*$' $eachfile)
#      echo $eachfile
      echo "${eachfile}\n" >> $outputfile
#      eachfile=${eachfile::-4}
#      echo "$eachfile" | sed 's:.*/::' >> $outputfile
   done
   echo "" >> $outputfile
   echo "Commands" >> $outputfile
   echo "~~~~~~~" >> $outputfile
   localprograms=$(echo "$inputpathcontent" | sed -n '/local programs/,/local/p')
   localprograms=$(echo $localprograms | grep -oP '\{\K[^\}]+')
   IFS=', ' read -r -a array <<< "$localprograms"
   for element in "${array[@]}"
   do
      echo -n "- " >> $outputfile
      echo "$element" | cut -d'"' -f 2 >> $outputfile
   done
   echo "" >> $outputfile
   echo "Example job" >> $outputfile
   echo "~~~~~" >> $outputfile
   echo ".. warning::" >> $outputfile
   echo "    Using \`\`#!/bin/sh -l\`\` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use \`\`#!/bin/bash\`\` instead." >> $outputfile
   echo "" >> $outputfile
   echo "To run $containername on our clusters::" >> $outputfile
   echo "" >> $outputfile

# Update index.rst using names of files in source folder

sourcefolder="$repo_path/docs/source/"
indexfile="$repo_path/docs/index.rst"

filenamesarray=`ls $sourcefolder`

sed -i '/Application list/,$d' $indexfile
echo "   :caption: Application list" >> $indexfile
echo "   :maxdepth: 3" >> $indexfile
echo "   :titlesonly:" >> $indexfile
echo "   " >> $indexfile
#for eachfile in $filenamesarray
#do
#   echo "   source/$eachfile/$eachfile" >> $indexfile
#done
