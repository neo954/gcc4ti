@echo off
REM =======================================================
REM
REM catches the usage information of all tools which is
REM printed on USAGE_OUT into file tooldocs.txt
REM
REM =======================================================
echo ############################################################################# > tooldocs.txt
echo SHORT USAGE INFORMATION of included PCTOOLS                                   >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
echo NOTE: tooldocs.txt will be automatically generated by calling each tool       >> tooldocs.txt
echo       without any commandline parameter.                                      >> tooldocs.txt
echo       Don't modify this document by hand. You will loose your changes         >> tooldocs.txt
echo       when builddocs.bat will run again                                       >> tooldocs.txt
echo ############################################################################# >> tooldocs.txt
ttarchive.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttbin2str.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttbin2hex.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttbin2oth.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttbin2bin.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttchecksum.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
REM bin/ttdos2ebk.exe >> tooldocs.txt
REM echo ----------------------------------------------------------------------------- >> tooldocs.txt
REM bin/ttebkgen.exe >> tooldocs.txt
REM echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttextract.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttinfo.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttpack.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttppggen.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttsetname.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttsplit.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttstrip.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/tttiler.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttunarchive.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt
REM bin/ttunebk.exe >> tooldocs.txt
REM echo ----------------------------------------------------------------------------- >> tooldocs.txt
bin/ttunpack.exe >> tooldocs.txt
echo ----------------------------------------------------------------------------- >> tooldocs.txt

echo tooldocs.txt generated.
@echo on