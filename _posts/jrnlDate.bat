@echo %off
setlocal enabledelayedexpansion

jrnl  -on today --export md -o C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\journalTMP.md

For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)

set STRING=---
set STRING1=layout: post
set STRING2=title: journal entries %mydate%
set STRING3=date: %mydate% 23:50
set STRING4=author: techenomics1
set STRING5=comments: true
set STRING6=categories: [Uncategorized]
set STRING7=---

@echo %STRING%>C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\%mydate%-journal.md
@echo %STRING1%>>C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\%mydate%-journal.md
@echo %STRING2%>>C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\%mydate%-journal.md
@echo %STRING3%>>C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\%mydate%-journal.md
@echo %STRING4%>>C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\%mydate%-journal.md
@echo %STRING5%>>C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\%mydate%-journal.md
@echo %STRING6%>>C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\%mydate%-journal.md
@echo %STRING7%>>C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\%mydate%-journal.md

@for /f "skip=6 delims=*" %%a in (C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\journalTMP.md) do (@echo %%a >>C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\journalTMP2.md) >nul

@xcopy C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\journalTMP2.md C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\journalTMP.md /y 

@del C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\journalTMP2.md /f /q >nul


@type C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\journalTMP.md >> C:\Users\rjr\Documents\Github\ryan-jr.github.io-master\_posts\%mydate%-journal.md
PAUSE