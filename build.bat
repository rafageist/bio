rem Re-creating index.html
del .\index.html
copy .\.div\index.tpl .\index.html
call div inject -ff ././div/design/index.html -fb "<div>--</div>" -tf ././index.html -tb "<!--{imported}-->"

rem Inject google analytics
call div @inject -ff ./.div/pieces/google-analytics.html -fb "<!--{analytics}-->" -tf ./index.html -ta "<head>"

rem Re-creating assets
del .\assets\*.* /s /q
del .\assets\css\*.* /s /q
del .\assets\js\*.* /s /q
del .\assets\fonts\*.* /s /q
del .\assets\bootstrap\*.* /s /q

call div @mkdir ./assets/css
call div @mkdir ./assets/js
call div @mkdir ./assets/fonts
call div @mkdir ./assets/img
call div @mkdir ./assets/bootstrap/css
call div @mkdir ./assets/bootstrap/js
call div @mkdir ./assets/bootstrap/fonts

copy .\.div\design\assets\*.* .\assets
copy .\.div\design\assets\css\*.* .\assets\css
copy .\.div\design\assets\js\*.* .\assets\js
copy .\.div\design\assets\fonts\*.* .\assets\fonts
copy .\.div\design\assets\img\*.* .\assets\img
copy .\.div\design\assets\bootstrap\css\*.* .\assets\bootstrap\css
copy .\.div\design\assets\bootstrap\fonts\*.* .\assets\bootstrap\fonts
copy .\.div\design\assets\bootstrap\js\*.* .\assets\bootstrap\js

rem Clean
del .\index.html.bak
