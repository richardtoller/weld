import random

def add_char(f, ch, xpos, ypos, col):
    f.write ('    <text\n')
    f.write ('       xml:space="preserve"\n')
    f.write (f'       style="font-size:4.23333px;line-height:0.9;font-family:Monospace;-inkscape-font-specification:\'Monospace, Bold\';writing-mode:lr-tb;direction:ltr;fill:{col};stroke:none;stroke-width:1.529"\n')
    f.write (f'       x="{xpos}"\n')
    f.write (f'       y="{ypos}"\n')
    f.write ('       id="text2"><tspan\n')
    f.write ('         sodipodi:role="line"\n')
    f.write ('         id="tspan2"\n')
    f.write ('         style="stroke-width:1.529"\n')
    f.write (f'         x="{xpos}"\n')
    f.write (f'         y="{ypos}">{ch}</tspan></text>\n')


f = open("wd3.svg", "w")

# start of svg file
f.write ('<?xml version="1.0" encoding="UTF-8" standalone="no"?>\n')
f.write ('\n')
f.write ('<svg\n')
f.write ('   width="210mm"\n')
f.write ('   height="297mm"\n')
f.write ('   viewBox="0 0 210 297"\n')
f.write ('   version="1.1"\n')
f.write ('   id="svg1"\n')
f.write ('   inkscape:version="1.4.3 (0d15f75, 2025-12-25)"\n')
f.write ('   sodipodi:docname="wd.svg"\n')
f.write ('   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"\n')
f.write ('   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"\n')
f.write ('   xmlns="http://www.w3.org/2000/svg"\n')
f.write ('   xmlns:svg="http://www.w3.org/2000/svg">\n')
f.write ('\n')
f.write ('  <defs\n')
f.write ('     id="defs1" />\n')
f.write ('  <g\n')
f.write ('     inkscape:label="Layer 1"\n')
f.write ('     inkscape:groupmode="layer"\n')
f.write ('     id="layer1">\n')

# the text string

phrases = [
    " .w.e.l.d ",
    " .w.e.l.d ",
    " .w.e.l.d ",
    " .w.e.l.d ",
    " .w.e.l.d ",
    ".w.e.like.dance",
    ".w.e.like.dance",
    ".w.e.love.dance",
    ".w.e.love.dance",
    ".w.e.love.dance",
    ".w.e.like.dancing",
    ".w.e.like.dancing",
    ".w.e.like.dancing",
    ".walklikean.egyptian.leadinga.dance",
    ".w.e.lcometothe.dance",
    ".w.eekend.leisure.dance",
    ".wish.everyone.liked.dancing",
    ".what.ever.locationthe.danceisat",
    ".who.ever.loves.dancing"
 ]

numberofphrases=300
# specify first few phrases explicitly
text=".w.e.lcometothe.dance.w.e.like.dance.w.e.love.dance.w.e.like.dancing"
for n in range(numberofphrases):
    text = text + random.choice(phrases)

# svg file content
xstart = 10
ystart = 10
charactersperline=60
xinterval = 2.5
yinterval = 3.8
normal_col = "#DDDDDD"
accent_col = "#BBBBBB"
#add_char(f, 'x', xstart, ystart, normal_col)
xpos = xstart
ypos = ystart
emphasize = False
count=0

#wcorrection = 0.5
#rightshiftcorrection = 0.4
wcorrection = 0
rightshiftcorrection = 0

for ch in text:
    
    if ch != ".":
        if ch == "w":
            xpos = xpos - wcorrection
            
        if ch == "j" or ch == "f" or ch == "i":
            xpos = xpos + rightshiftcorrection
            
        if emphasize == False:
            add_char(f, ch, xpos, ypos, normal_col)
        else:
            add_char(f, ch, xpos, ypos, accent_col)
            emphasize = False
        
        if ch == "w":
            xpos = xpos + wcorrection   
        if ch == "j" or ch == "f" or ch == "i":
            xpos = xpos - rightshiftcorrection
            
            
        if count == charactersperline-1:
            xpos = xstart
            ypos = ypos + yinterval
            count = 0
        else:
            xpos = xpos + xinterval
            count = count + 1
    
    else:
        emphasize = True
    
    
# end of svg file
f.write ('  </g>\n')
f.write ('</svg>\n')





    

