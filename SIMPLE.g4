grammar SIMPLE;

program: procedure+;
procedure: 'procedure' procedureName bracedBlock;
bracedBlock: '{' statementList '}';
statementList: statement+;
statement:
	readStatement
	| printStatement
	| callStatement
	| whileStatement
	| ifStatement
	| assignStatement;
readStatement: 'read' variableName ';';
printStatement: 'print' variableName ';';
callStatement: 'call' procedureName ';';
whileStatement: 'while' conditionalBlock bracedBlock;
ifStatement:
	'if' conditionalBlock 'then' bracedBlock 'else' bracedBlock;
assignStatement: variableName '=' expression ';';
conditionalBlock: '(' conditionalExpression ')';
conditionalExpression:
	relationalExpression
	| '!' conditionalBlock
	| conditionalBlock '&&' conditionalBlock
	| conditionalBlock '||' conditionalBlock;
relationalExpression:
	relationalFactor ('>' | '>=' | '<' | '<=' | '==' | '!=') relationalFactor;
relationalFactor: variableName | constant | expression;
expression: expression '+' term | expression '-' term | term;
term:
	term '*' factor
	| term '/' factor
	| term '%' factor
	| factor;
factor: variableName | constant | '(' expression ')';
variableName: NAME;
procedureName: NAME;
constant: DIGIT+;
NAME: LETTER (LETTER | DIGIT)+;
LETTER: [A-Za-z];
DIGIT: [0-9];
