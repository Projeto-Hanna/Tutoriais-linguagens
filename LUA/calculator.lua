io.write('Digite a sua operacao + - * /:\n')
local operador = io.read(1)

io.write('Digite o primeiro numero:\n')
local operandoA = io.read('*n')

io.write('Digite o segundo numero:\n')
local operandoB = io.read('*n')

if operador == '+' then
  io.write('Sua soma deu: ' .. (operandoA + operandoB))
elseif operador == '-' then
  io.write('Sua subtracao deu: ' .. (operandoA - operandoB))
elseif operador == '*' then
  io.write('Sua multiplicacao deu: ' .. (operandoA * operandoB))
elseif operador == '/' then
  if operandoB == 0 then
    io.write('Divisor nao pode ser 0')
  else
    io.write('Sua divisao deu: ' .. (operandoA / operandoB))
  end
else
  io.write('operador invalido')
end