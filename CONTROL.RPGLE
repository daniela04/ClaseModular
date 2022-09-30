**free
      /copy COPY




      dcl-proc PrEntrada Export;
       dcl-pi *n;
         InNombre like(wNombreT) Const;
         InId like(wIdT) Const;
         OutMsgId like (wMsgIdT);
       end-pi;

      //- Structures

       dcl-Ds DsUsuario likeDs(DsUsuarioT);


      //variables

      dcl-s wSqlState like(wSqlStateT);

      //- process
      
      DsUsuario.Nombre = InNombre;
      DsUsuario.Id = InId;
      DsUsuario.Fecha = FnFormatoFecha(%Date());
      DsUsuario.Tiempo= FnFormatoTiempo(%Time());
   

      prInsertar(DsUsuario:wSqlState);

      

    end-proc;

