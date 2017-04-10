
local widget = require("widget")

tabuleiro = {	
	
	{" "," "," "}, 
	{" "," "," "}, 
	{" "," "," "}
	
}




local contador = 1

local x1 = display.contentWidth * 0.33

local x2 = display.contentWidth * 0.66

local y1= display.contentHeight /5

local y2 = y1*2

local y3 = y1* 3

local y4 = y1*4

local y5 = y1*5

local texto = display.newText({text = "",x = display.contentWidth/2,y =(y1+y2)/2,fontSize = 25})

-- Funções da logica do jogo

-- Esse metodo realiza a jogada na tabela tabuleiro
function tabuleiro:realizaJogada(linha,coluna,valor)
tabuleiro[linha][coluna] = valor
end



function tabuleiro:validaJogada(linha,coluna)
	if(tabuleiro[linha][coluna]== "x" or tabuleiro[linha][coluna] == "o") then
		return false
	end
	
	return true
end


function tabuleiro:verificaQualVencedor()


--[[Esse metodo verifica se há algum vencedor]]
	
	
	
	if tabuleiro[2][2] =="x" or tabuleiro[2][2] =="o" then
	
		--[[Verifica se a segunda linha na vertical é um .equals()]]
		if tabuleiro[1][2] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][2] then
	
			return tabuleiro[1][2]
	
		end
	
		--[[Verifica se a segunda linha na horizontal é um .equals()]]
	
		if tabuleiro[2][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[2][3] then
	
			return tabuleiro[2][1]
	
		end
	
		--[[Verifica se a diagonal em formato de \ é um .equals()]]
	
		if tabuleiro[1][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][3] then
	
			return tabuleiro[1][1]
		
		end
	
		--[[Verifica se a diagonal em formato de / é um .equals()]]
	
		if tabuleiro[3][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[1][3] then 
	
			return tabuleiro[3][1]
		
		end
	
	end
	
	
	if tabuleiro[1][1] == "x" or tabuleiro[1][1] == "o" then
	--[[Verifica se a primeira linha na horizontal é um .equals()]]
	
		if tabuleiro[1][1] == tabuleiro[1][2] and tabuleiro[1][2] == tabuleiro[1][3] then
	
			return tabuleiro[1][1]
	
		end
	
	
		--[[Verifica se a primeira linha na vertical é um .equals()]]
		if tabuleiro[1][1] == tabuleiro[2][1] and tabuleiro[2][1] == tabuleiro[3][1] then
		
			return tabuleiro[1][1]
	
		end
	end
	
	
	
	if tabuleiro[3][3] == "x" or tabuleiro[3][3] == "o" then
	
		--[[Verifica se a terceira linha na vertical é um .equals()]]
		if tabuleiro[1][3] == tabuleiro[2][3] and tabuleiro[2][3] == tabuleiro[3][3] then
	
			return tabuleiro[1][3]
	
		end
	
		--[[Verifica se a terceira linha na horizontal é um .equals()]]
		if tabuleiro[3][1] == tabuleiro[3][2] and tabuleiro[3][2] == tabuleiro[3][3] then
	
			return tabuleiro[3][1]
	
		end
	end
	
	return ""
	
end

function tabuleiro:vencedor()
	
	--[[Esse metodo verifica se há algum vencedor]]
	
	
	
	if tabuleiro[2][2] =="x" or tabuleiro[2][2] =="o" then
	
		--[[Verifica se a segunda linha na vertical é um .equals()]]
		if tabuleiro[1][2] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][2] then
	
			return true
	
		end
	
		--[[Verifica se a segunda linha na horizontal é um .equals()]]
	
		if tabuleiro[2][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[2][3] then
	
			return true
	
		end
	
		--[[Verifica se a diagonal em formato de \ é um .equals()]]
	
		if tabuleiro[1][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][3] then
	
			return true
		
		end
	
		--[[Verifica se a diagonal em formato de / é um .equals()]]
	
		if tabuleiro[3][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[1][3] then 
	
			return true
		
		end
	
	end
	
	
	if tabuleiro[1][1] == "x" or tabuleiro[1][1] == "o" then
	--[[Verifica se a primeira linha na horizontal é um .equals()]]
	
		if tabuleiro[1][1] == tabuleiro[1][2] and tabuleiro[1][2] == tabuleiro[1][3] then
	
			return true
	
		end
	
	
		--[[Verifica se a primeira linha na vertical é um .equals()]]
		if tabuleiro[1][1] == tabuleiro[2][1] and tabuleiro[2][1] == tabuleiro[3][1] then
		
			return true
	
		end
	end
	
	
	
	if tabuleiro[3][3] == "x" or tabuleiro[3][3] == "o" then
	
		--[[Verifica se a terceira linha na vertical é um .equals()]]
		if tabuleiro[1][3] == tabuleiro[2][3] and tabuleiro[2][3] == tabuleiro[3][3] then
	
			return true
	
		end
	
		--[[Verifica se a terceira linha na horizontal é um .equals()]]
		if tabuleiro[3][1] == tabuleiro[3][2] and tabuleiro[3][2] == tabuleiro[3][3] then
	
			return true
	
		end
	end
	
	
	return false
	
end

function tabuleiro:empate()
	local cont = 0 
	
	for i=1 , #tabuleiro , 1 do
	
		for	s = 1 , 3 , 1 do
		
		if tabuleiro[i][s] == "x"  or tabuleiro[i][s] == "o"  then
		
			cont = cont + 1 
			
		end
		
		
		
		end

	end
	
	if(cont == 9) then
	
		return true
	
	else 
	
		return false
	
	end
	
end


-- Funções de interface
function desenha_tabuleiro()



linhaHorizontal1 = display.newLine(0 , (y2+y3)/3, display.contentWidth ,(y2+y3)/3 )

linhaAltura1 =  display.newLine(x1 ,y2 ,x1 , display.contentHeight)

linhaAltura1.strokeWidth = 2

linhaAltura1:setStrokeColor(0,1,0)

linhaAltura2 = display.newLine(x2 ,y2 ,x2 , display.contentHeight)

linhaAltura2.strokeWidth = 2

linhaAltura2:setStrokeColor(0,1,0)

linhaHorizontal1 = display.newLine(0 , y3, display.contentWidth ,y3 )

linhaHorizontal1.strokeWidth = 2

linhaHorizontal1:setStrokeColor(0,1,0)

linhaHorizontal2 = display.newLine(0 , y4, display.contentWidth ,y4 )

linhaHorizontal2.strokeWidth = 2

linhaHorizontal2:setStrokeColor(0,1,0)

end

function realiza_jogada_interface( linha,coluna )
	
	local centroX = 0
	local centroY = 0 

	if linha == 1 and coluna == 1 then

		centroX = x1/2
		centroY = (y2+y3)/2

	end

	if linha == 1 and coluna == 2 then
		
		centroX = (x1+x2)/2
		centroY = (y2+y3)/2

	end

	if linha == 1 and coluna == 3 then
		centroX = (x2+display.contentWidth)/2
		centroY = (y2+y3)/2

	end

	if linha == 2 and coluna == 1 then
		centroX = x1/2
		centroY = (y3+y4)/2

	end

	if linha == 2 and coluna == 2  then
		centroX = (x1+x2)/2
		centroY = (y3+y4)/2


	end		

	if linha == 2 and coluna == 3 then
		centroX = (x2+display.contentWidth)/2
		centroY = (y3+y4)/2

	end


	if linha == 3 and coluna == 1 then
		centroX = x1/2
		centroY = (y4 + display.contentHeight)/2

	end

	if linha == 3 and coluna == 2 then
		centroX = (x1+x2)/2
		centroY = (y4 + display.contentHeight)/2
	end

	if linha == 3 and coluna == 3 then
		centroX = (x2 + display.contentWidth)/2
		centroY = (y4 + display.contentHeight)/2

	end
	
	if(tabuleiro:validaJogada(linha,coluna)) then
			valor = ""
			
			if contador % 2 == 0 then
				texto.text = "Vez do Jogador O"
				desenhaX(centroX,centroY)
				tabuleiro:realizaJogada(linha,coluna,"x")
				
			else
				texto.text = "Vez do Jogador X"
				tabuleiro:realizaJogada(linha,coluna,"o")
				desenhaCirculo(centroX,centroY)
	
			end
		
		contador = contador+1
		
	end
	
	if tabuleiro:vencedor() then
		texto.text = "O jogador ".. tabuleiro:verificaQualVencedor() .. " venceu o Jogo"
		botao_reset()
		for i=1 , 3 , 1 do

			for s=1, 3, 1 do
	
		tabuleiro[i][s] = " "
	
				end
	
	
			end
		end
		
	
	if tabuleiro:empate() then
	texto.text = "Empate"
	
	
	
	for i=1 , 3 , 1 do

			for s=1, 3, 1 do
	
		tabuleiro[i][s] = " "
	
				end
	
	
			end
	
	end
	
	
	
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
	
b11 = widget.newButton({ x = x1/2, y = (y2+y3)/2, width = (x1-2), height = (y1-2)})

b11.linha = 1
b11.coluna = 1

b12 = widget.newButton({ x = (x1+x2)/2, y = (y2+y3)/2 , width = (x1-2), height = (y1-2) })
b12.linha = 1
b12.coluna = 2


b13 = widget.newButton({ x = (x2 + display.contentWidth)/2, y = (y2+y3)/2 , width = (x1-2), height = (y1-2)})

b13.linha = 1
b13.coluna = 3

b21 = widget.newButton({ x = (x1)/2, y = (y3+y4)/2 , width = (x1-2), height = (y1-2)})

b21.linha = 2
b21.coluna = 1

b22 = widget.newButton({ x = (x1+x2)/2, y = (y3+y4)/2 , width = (x1-2), height = (y1-2)})

b22.linha = 2
b22.coluna = 2

b23 = widget.newButton({ x = (x2 + display.contentWidth)/2, y = (y3+y4)/2 , width = (x1-2), height = (y1-2)})

b23.linha = 2
b23.coluna = 3

b31 = widget.newButton({ x = (x1)/2, y = (y4+display.contentHeight)/2 , width = (x1-2), height = (y1-2)})
b31.linha = 3
b31.coluna = 1

b32 = widget.newButton({ x = (x1+x2)/2, y = (y4+display.contentHeight)/2 , width = (x1-2), height = (y1-2)})
b32.linha = 3
b32.coluna = 2


b33 = widget.newButton({ x = (x2+display.contentWidth)/2, y = (y4+display.contentHeight)/2 , width = (x1-2), height = (y1-2)})
b33.linha = 3
b33.coluna = 3


end

local function eventos_botoes_target(event)
		
		if (event.phase == "began") then
			
			realiza_jogada_interface(event.target.linha,event.target.coluna)
			
			
		end

	end

local function reseta_jogo(event)	

if event.phase == "began" then
reset:addEventListener("touch",reseta_jogo)


display.remove(circulo,linhaX1,linhaX2)

end

end
	
function botao_reset ()

reset = widget.newButton({ x = display.contentWidth/2, y = display.contentHeight/2, width = display.contentWidth, height = display.contentHeight})
end
	
local function eventosBotoes()
b11:addEventListener("touch",eventos_botoes_target)

b12:addEventListener("touch",eventos_botoes_target)

b13:addEventListener("touch",eventos_botoes_target)

b21:addEventListener("touch",eventos_botoes_target)

b22:addEventListener("touch",eventos_botoes_target)

b23:addEventListener("touch",eventos_botoes_target)

b31:addEventListener("touch",eventos_botoes_target)

b32:addEventListener("touch",eventos_botoes_target)

b33:addEventListener("touch",eventos_botoes_target)


end


function main()
desenha_tabuleiro()
criarButao()



eventosBotoes()
texto.text= " Vez do Jogador O"

end




main()