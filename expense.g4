grammar expense;

payments: (payment NL)* ;  
payment: PAY receiver amount=NUMBER ;  
receiver: surname=ID (lastname=ID)? ;  

PAY: 'pay' ;
NUMBER: ([0-9]+(','[0-9]+)*)('.'[0-9]*)?;
ID: [a-zA-Z0-9_]+ ;
NL: '\n' | '\r\n' ;  
WS: [\t ]+ -> skip ;