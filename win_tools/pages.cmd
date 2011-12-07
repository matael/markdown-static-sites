REM Try to implement "pages" target AND make_pages script
REM Assuming our dear fucking windows user managed to install
REM perl correctly and we can access it trhough the perl.exe cmd

mkdir pages
for %%G in (src\*.mkd) do (
echo "Converting..."
type template\begin > pages\%%~nG.html
perl.exe bin\Markdown.pl %%G >> pages\%%~nG.html
type template\end >> pages\%%~nG.html
)
