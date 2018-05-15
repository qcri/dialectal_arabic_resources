#!/bin/bash -e

: <<=cut
=pod 
=head NAME
shellName - Brief description of the script
SYNOPSIS
  
generate_splits.sh [dialect] 
  
  
 options:
 	--help              display help information.
 arguments:
 	dialect          one of the dialects [lev/egy/mgr/glf]
DESCRIPTION
This script will do something and produces something.
Ahmed Abdelali
<Ahmed Abdelali> (aabdelali @ hbku dot edu dot qa)
COPYRIGHT
Copyright (C) <2018>, QCRI.
=cut

function VERBOSE {
  echo $@ > /dev/null
}

SHOWHELP=false 

while [[ $# -gt 0 ]]; do
  case "$1" in
   "egy")
    diac=$1
    shift
    ;;
   "mgr")
    diac=$1
    shift
    ;;
   "lev")
    diac=$1
    shift
    ;;
   "glf")
    diac=$1
    shift
    ;;    
   "-h")
    shift
    SHOWHELP=true;
    ;;
   "--help")
    shift
    SHOWHELP=true;
    ;;
   "--verbose")
    shift
    function VERBOSE {
    echo $@
    }
    ;;
     *)
      break;
  esac
done

if $SHOWHELP;
then
  pod2text $0
  exit 0
fi


# 
#
# 
echo Building $diac dataset.
mkdir -p $diac 

grep '1\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_1.test.trg
grep '1\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_1.test.src
grep -E '2\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_1.dev.trg
grep -E '2\tB\t' seg_plus_pos_$diac.txt | cut -f5  > $diac/$diac.data_1.dev.src
grep -E -v '1\t[A-B]\t|2\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_1.train.trg;
grep -E -v '1\t[A-B]\t|2\tB\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_1.train.src;


grep '2\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_2.test.trg
grep '2\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_2.test.src
grep -E '3\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_2.dev.trg
grep -E '3\tB\t' seg_plus_pos_$diac.txt | cut -f5  > $diac/$diac.data_2.dev.src
grep -E -v '2\t[A-B]\t|3\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_2.train.trg;
grep -E -v '2\t[A-B]\t|3\tB\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_2.train.src;


grep '3\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_3.test.trg
grep '3\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_3.test.src
grep -E '4\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_3.dev.trg
grep -E '4\tB\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_3.dev.src
grep -E -v '3\t[A-B]\t|4\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_3.train.trg;
grep -E -v '3\t[A-B]\t|4\tB\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_3.train.src;


grep '4\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_4.test.trg
grep '4\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_4.test.src
grep -E '5\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_4.dev.trg
grep -E '5\tB\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_4.dev.src
grep -E -v '4\t[A-B]\t|5\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_4.train.trg;
grep -E -v '4\t[A-B]\t|5\tB\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_4.train.src;

grep '5\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_5.test.trg
grep '5\t[A-B]\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_5.test.src
grep -E '1\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_5.dev.trg
grep -E '1\tB\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_5.dev.src
grep -E -v '5\t[A-B]\t|1\tB\t' seg_plus_pos_$diac.txt | cut -f7 > $diac/$diac.data_5.train.trg;
grep -E -v '5\t[A-B]\t|1\tB\t' seg_plus_pos_$diac.txt | cut -f5 > $diac/$diac.data_5.train.src;



exit 0
