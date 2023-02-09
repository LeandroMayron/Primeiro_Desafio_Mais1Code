Program Pzim ;
type
colaborador = record
  nome, cargo: String;
  salario,novoSalario: real;
  codigo, bonus: integer;
end;

var colaboradores: array[1..5] of colaborador;
var opcao, i, cont: integer;
var saida: Char;
var nome: String;


procedure dadosColaborador ();
			
Begin
  colaboradores[1].codigo:= 1 ;
  colaboradores[1].cargo:= 'Analista Junior';
  colaboradores[1].salario:= 3.500;
  colaboradores[1].bonus:= 10;
  colaboradores[1].novoSalario:= colaboradores[1].salario + (colaboradores[1].salario * 0.10);
  
  colaboradores[2].codigo:= 2;
  colaboradores[2].cargo:= 'Analista Pl�no';
  colaboradores[2].salario:= 4.500;
  colaboradores[2].bonus:= 30;
  colaboradores[2].novoSalario:= colaboradores[2].salario + (colaboradores[2].salario * 0.30);
  
  colaboradores[3].codigo:= 3;
  colaboradores[3].cargo:= 'Analista Senio';
  colaboradores[3].salario:= 5.500;
  colaboradores[3].bonus:= 50;
  colaboradores[3].novoSalario:= colaboradores[3].salario + (colaboradores[3].salario * 0.50);
 
  while (saida <> 's') do
  Begin
    writeln(' ');
    writeln('Informe o nome do colaborador: ');
    write('=> ');
    read(nome);
    
    writeln('Escolha a op��o de cargo do colaborador');
    writeln('(1) An�lista Junior');
    writeln('(2) An�lista Pl�no');
    writeln('(3) An�lista S�nio');
    write('=> ');
    read(opcao);
    clrscr;
    
    
    for i:= 1 to 5 do
    begin
      
      if (colaboradores[i].codigo = opcao) then
      Begin
        colaboradores[i].nome:= nome;
        writeln('O colaborador ',colaboradores[i].nome,' t�m o cargo de ',colaboradores[i].cargo,' com sal�rio R$: ',colaboradores[i].salario:0:4,' com um b�nus de ', colaboradores[i].bonus, ' porcento o novo sal�rio R$: ',colaboradores[i].novoSalario:0:4);
        cont:= cont + 1;
      End;
    end;
    
    writeln('Digite (s) para sair do programa ou qualquer tecla para continuar');
    write('=> ');
    read(saida);
  end;
  writeln('Obrigado por usar o nosso programa!');
  
end;

procedure relatorio();
var j: integer;
Begin
	i:= 1;
  j:= 1;     
	writeln(' ');
	writeln('Relat�rio de pesquisa do usu�rio');      
  while ( j <= cont) do
  Begin
    writeln('O colaborador ', colaboradores[i].nome,' t�m o cargo de ',colaboradores[i].cargo,' com sal�rio R$: ',colaboradores[i].salario:0:4,' com um b�nus de ', colaboradores[i].bonus,' porcento o novo sal�rio R$: ',colaboradores[i].novoSalario:0:4);
    writeln('');
    i:= i + 1;
    j:= j + 1;
  end;
end;

Begin
  
  dadosColaborador();
  relatorio();
  readkey();
  
End.