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
	
	centroX = 0
	centroY = 0 

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
	
	


end

function desenhaCirculo()
	circulo = display.newCircle(centroX,centroY,40)
	
	circulo.strokeWidth = 5

	circulo:setFillColor(0)

	circulo:setStrokeColor(1,0,0)	
end

function desenhaX() 

	linhaX1 = display.newLine(centroX - 35, centroY - 35, centroX + 35 , centroY +35)

	 linhaX2 = display.newLine(centroX + 35,centroY - 35, centroX - 35 , centroY + 35)

	 linhaX1.strokeWidth = 5

	 linhaX2.strokeWidth = 5

	 linhaX1:setStrokeColor(0,0,1)
	 linhaX2:setStrokeColor(0,0,1)


end




desenha_tabuleiro()

realiza_jogada(1,1)



realiza_jogada(1,2)
-- criar circulo

--[[circulo = display.newCircle(display.contentWidth * 0.50,display.contentHeight * 0.50,40)

circulo.strokeWidth = 5

circulo:setFillColor(0)

circulo:setStrokeColor(1,0,0)
]]