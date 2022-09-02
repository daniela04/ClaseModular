**free
      /copy COPY

      dcl-pr PrEntrada;
        parNombre like(wNombreT);
        parId like(wIdT);
      end-Pr;


      dcl-proc PrEntrada Export;
       dcl-pi *n;
         InNombre like(wNombreT);
         InId like(wIdT);
       end-pi;

      //- Structures

       dcl-Ds DsUsuario likeDs(DsUsuarioT);

      //- process

       DsInsertar.Nombre = InNombre;
       DsInsertar.Id =InId;

       prInsertar(DsInsertar);

      //dani

    end-proc;

