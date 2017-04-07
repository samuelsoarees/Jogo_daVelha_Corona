
local widget = require("widget")



x1 = display.contentWidth * 0.33

x2 = display.contentWidth * 0.66

y1 = display.contentHeight * 0.33

y2 = display.contentHeight * 0.66



function desenha_tabuleiro()



linhaAltura1 =  display.newLine(x1 ,0 ,x1 , display.contentHeight)

linhaAltura1.strokeWidth = 5

linhaAltura1:setStrokeColor(0,1,0)

linhaAltura2 = display.newLine(x2 ,0 ,x2 , display.contentHeight)

linhaAltura2.strokeWidth = 5

linhaAltura2:setStrokeColor(0,1,0)

linhaHorizontal1 = display.newLine(0 , y1, display.contentWidth ,y1 )

linhaHorizontal1.strokeWidth = 5

linhaHorizontal1:setStrokeColor(0,1,0)

linhaHorizontal2 = display.newLine(0 , y2, display.contentWidth ,y2 )

linhaHorizontal2.strokeWidth = 5	

linhaHorizontal2:setStrokeColor(0,1,0)

end

function realiza_jogada( linha,coluna )
	
	local centroX = 0
	local centroY = 0 

	if linha == 1 and coluna == 1 then

		centroX = x1/2
		centroY = y1/2

	end

	if linha == 1 and coluna == 2 then
		
		centroX = (x1+x2)/2
		centroY = y1/2

	end

	if linha == 1 and coluna == 3 then
		centroX = (x2+display.contentWidth)/2
		centroY = y1/2

	end

	if linha == 2 and coluna == 1 then
		centroX = x1/2
		centroY = (y1+y2)/2

	end

	if linha == 2 and coluna == 2  then
		centroX = (x1+x2)/2
		centroY = (y1+y2)/2


	end		

	if linha == 2 and coluna == 3 then
		centroX = (x2+display.contentWidth)/2
		centroY = (y1+y2)/2

	end


	if linha == 3 and coluna == 1 then
		centroX = x1/2
		centroY = (y2 + display.contentHeight)/2

	end

	if linha == 3 and coluna == 2 then
		centroX = (x1+x2)/2
		centroY = (y2 + display.contentHeight)/2
	end

	if linha == 3 and coluna == 3 then
		centroX = (x2 + display.contentWidth)/2
		centroY = (y2 + display.contentHeight)/2

	end
	
	
	desenhaX(centroX,centroY)
	
	
end

function desenhaCirculo(centroX,centroY)
	
	circulo = display.newCircle(centroX,centroY,40)
	
	circulo.strokeWidth = 5

	circulo:setFillColor(0)

	circulo:setStrokeColor(1,0,0)	
end

function desenhaX(centroX,centroY) 
	
	 linhaX1 = display.newLine(centroX - 35, centroY - 35, centroX + 35 , centroY +35)

	 linhaX2 = display.newLine(centroX + 35,centroY - 35, centroX - 35 , centroY + 35)

	 linhaX1.strokeWidth = 5

	 linhaX2.strokeWidth = 5

	 linhaX1:setStrokeColor(0,0,1)

	 linhaX2:setStrokeColor(0,0,1)
end

function criarButao()
	
b11 = widget.newButton({ x = x1/2, y = y1/2, width = (x1-5), height = (y1-5)})

b11.linha = 1
b11.coluna = 1

b12 = widget.newButton({ x = (x1+x2)/2, y = (y1/2) , width = (x1-5), height = (y1-5) })
b12.linha = 1
b12.coluna = 2


b13 = widget.newButton({ x = (x2 + display.contentWidth)/2, y = (y1/2) , width = (x1-5), height = (y1-5)})

b13.linha = 1
b13.coluna = 3

b21 = widget.newButton({ x = (x1)/2, y = (y1+y2)/2 , width = (x1-5), height = (y1-5)})

b21.linha = 2
b21.coluna = 1

b22 = widget.newButton({ x = (x1+x2)/2, y = (y1+y2)/2 , width = (x1-5), height = (y1-5)})

b22.linha = 2
b22.coluna = 2

b23 = widget.newButton({ x = (x2 + display.contentWidth)/2, y = (y1+y2)/2 , width = (x1-5), height = (y1-5)})

b23.linha = 2
b23.coluna = 3

b31 = widget.newButton({ x = (x1)/2, y = (y2+display.contentHeight)/2 , width = (x1-5), height = (y1-5)})
b31.linha = 3
b31.coluna = 1

b32 = widget.newButton({ x = (x1+x2)/2, y = (y2+display.contentHeight)/2 , width = (x1-5), height = (y1-5)})
b32.linha = 3
b32.coluna = 2


b33 = widget.newButton({ x = (x2+display.contentWidth)/2, y = (y2+display.contentHeight)/2 , width = (x1-5), height = (y1-5)})
b33.linha = 3
b33.coluna = 3

end



local function realizaJogadaInterface(event)
		
		if (event.phase == "began") then
			
			realiza_jogada(event.target.linha,event.target.coluna)
			
			
		end

	end

local function eventosBotoes()
b11:addEventListener("touch",realizaJogadaInterface)

b12:addEventListener("touch",realizaJogadaInterface)

b13:addEventListener("touch",realizaJogadaInterface)

b21:addEventListener("touch",realizaJogadaInterface)

b22:addEventListener("touch",realizaJogadaInterface)

b23:addEventListener("touch",realizaJogadaInterface)

b31:addEventListener("touch",realizaJogadaInterface)

b32:addEventListener("touch",realizaJogadaInterface)

b33:addEventListener("touch",realizaJogadaInterface)

end

desenha_tabuleiro()
criarButao()

eventosBotoes()




