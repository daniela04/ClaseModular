**free

    /copy COPY


    dcl-proc prInsertar Export;
      dcl-pi *n;
       InUsuario likeDs(DsUsuarioT) Const;
       OutSqlState like(wSqlStateT);
      end-pi;

    //process

    Exec SQL
      Insert into USUARIO Values(:InUsuario);

      OutSqlState = SQLSTATE;

    end-proc;   

