function desenha_tabuleiro()


x1 = display.contentWidth * 0.33

linhaAltura1 =  display.newLine(x1 ,0 ,x1 , display.contentHeight)

linhaAltura1.strokeWidth = 5



x2 = display.contentWidth * 0.66

linhaAltura2 = display.newLine(x2 ,0 ,x2 , display.contentHeight)

linhaAltura2.strokeWidth = 5



y1 = display.contentHeight * 0.33

linhaHorizontal1 = display.newLine(0 , y1, display.contentWidth ,y1 )

linhaHorizontal1.strokeWidth = 5



y2 = display.contentHeight * 0.66

linhaHorizontal2 = display.newLine(0 , y2, display.contentWidth ,y2 )

linhaHorizontal2.strokeWidth = 5	

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



	

	local circulo = display.newCircle(centroX,centroY,40)
	circulo.strokeWidth = 5

	circulo:setFillColor(0)

	circulo:setStrokeColor(1,0,0)
end



desenha_tabuleiro()


realiza_jogada(1,1)

realiza_jogada(1,2)

realiza_jogada(1,3)

realiza_jogada(2,1)

realiza_jogada(2,2)

realiza_jogada(2,3)

realiza_jogada(3,1)

realiza_jogada(3,2)

realiza_jogada(3,3)

-- criar circulo

--[[circulo = display.newCircle(display.contentWidth * 0.50,display.contentHeight * 0.50,40)

circulo.strokeWidth = 5

circulo:setFillColor(0)

circulo:setStrokeColor(1,0,0)
]]