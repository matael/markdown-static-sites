REM Try to implement "pages" target AND make_pages script
REM Assuming our dear fucking windows user managed to install
REM perl correctly and we can access it trhough the perl.exe cmd

IN_DIR=$1
OUTPUT_DIR=$2
TEMPLATE=$3

mkdir pages
for %%G in (src/*.mkd) do (
echo "Converting..."
type template/begin > pages/%%~nG.mkd
perl.exe bin/Markdown.pl $i > pages/%%~nG.mkd
type template/end >> pages/%%~nG.mkd
)
