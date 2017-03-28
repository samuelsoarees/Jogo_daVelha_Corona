function desenha_tabuleiro(  )
--largura
local x1 = display.contentWidth * 0.33

linhaAltura1 =  display.newLine(x1 ,0 ,x1 , display.contentHeight)

linhaAltura1.strokeWidth = 5

local x2 = display.contentWidth * 0.66

linhaAltura2 = display.newLine(x2 ,0 ,x2 , display.contentHeight)

linhaAltura2.strokeWidth = 5

--altura
local y1 = display.contentHeight * 0.33

linhaHorizontal1 = display.newLine(0 , y1, display.contentWidth ,y1 )

linhaHorizontal1.strokeWidth = 5

local y2 = display.contentHeight * 0.66

linhaHorizontal2 = display.newLine(0 , y2, display.contentWidth ,y2 )

linhaHorizontal2.strokeWidth = 5	
end


function realiza_jogada( linha,coluna )
	
end

desenha_tabuleiro()

circulo = display.newCircle(display.contentWidth * 0.50,display.contentHeight * 0.50,40)

circulo.strokeWidth = 5

circulo:setFillColor(0)

circulo:setStrokeColor(1)