#!/bin/bash

#Add Festival CMU arctic voice
if [ -d /usr/share/festival/voices/english/ ]
then
  cd /usr/share/festival/voices/english/ && wget -c http://www.speech.cs.cmu.edu/cmu_arctic/packed/cmu_us_clb_arctic-0.95-release.tar.bz2 && tar jxf cmu_us_clb_arctic-0.95-release.tar.bz2 && ln -s cmu_us_clb_arctic cmu_us_clb_arctic_clunits && cp /etc/festival.scm /etc/festival.scm.orig && echo "(set! voice_default 'voice_cmu_us_clb_arctic_clunits)" >> /etc/festival.scm && rm -f
cmu_us_clb_arctic-0.95-release.tar.bz2

else
  echo "No Festival?"
fi

