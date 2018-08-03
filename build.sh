div @inject -ff index.html -fb "<div>--</div>" -tf ./.div/index.tpl -tb "<!--{imported}-->"
div @copy ./.div/index.tpl ./index.html