  -     k820309              18.0        ŞüY                                                                                                          
       Interfaces.f90 MPI__R8_VS              gen@MPI_GATHER gen@MPI_GATHERV gen@MPI_SCATTER gen@MPI_SCATTERV gen@MPI_ALLGATHER gen@MPI_ALLGATHERV gen@MPI_ALLTOALL gen@MPI_ALLTOALLV gen@MPI_REDUCE gen@MPI_ALLREDUCE gen@MPI_REDUCE_SCATTER gen@MPI_SCAN                                                        u #MPI_GATHER_T    #         @     @X                                              	   #SENDBUF    #SENDCOUNT    #SENDTYPE    #RECVBUF    #RECVCOUNT    #RECVTYPE    #ROOT    #COMM 	   #IERROR 
          @  
@ @                                                  
    p          1     1                             
@ @                                                    
@ @                                                    D @                                   
                 
@ @                                                    
@ @                                                    
@ @                                                    
@ @                               	                     D @                               
                                                                   u #MPI_GATHERV_T    #         @     @X                                              
   #SENDBUF    #SENDCOUNT    #SENDTYPE    #RECVBUF    #RECVCOUNTS    #DISPLS    #RECVTYPE    #ROOT    #COMM    #IERROR           @  
@ @                                                  
    p          1     1                             
@ @                                                    
@ @                                                    D @                                   
              @  
@ @                                                      p          1     1                          @  
@ @                                                      p          1     1                             
@ @                                                    
@ @                                                    
@ @                                                    D @                                                                                                  u #MPI_SCATTER_T    #         @     @X                                              	   #SENDBUF    #SENDCOUNT    #SENDTYPE    #RECVBUF    #RECVCOUNT    #RECVTYPE    #ROOT    #COMM    #IERROR           @  
@ @                                                  
    p          1     1                             
@ @                                                    
@ @                                                    D @                                   
                 
@ @                                                    
@ @                                                    
@ @                                                    
@ @                                                    D @                                                                                                  u #MPI_SCATTERV_T     #         @     @X                                               
   #SENDBUF !   #SENDCOUNTS "   #DISPLS #   #SENDTYPE $   #RECVBUF %   #RECVCOUNT &   #RECVTYPE '   #ROOT (   #COMM )   #IERROR *          @  
@ @                              !                    
    p          1     1                          @  
@ @                              "                     	   p          1     1                          @  
@ @                              #                     
   p          1     1                             
@ @                               $                     D @                              %     
                 
@ @                               &                     
@ @                               '                     
@ @                               (                     
@ @                               )                     D @                               *                                                                   u #MPI_ALLGATHER_T +   #         @     @X                             +                    #SENDBUF ,   #SENDCOUNT -   #SENDTYPE .   #RECVBUF /   #RECVCOUNT 0   #RECVTYPE 1   #COMM 2   #IERROR 3          @  
@ @                              ,                    
    p          1     1                             
@ @                               -                     
@ @                               .                     D @                              /     
                 
@ @                               0                     
@ @                               1                     
@ @                               2                     D @                               3                                                                   u #MPI_ALLGATHERV_T 4   #         @     @X                             4                 	   #SENDBUF 5   #SENDCOUNT 6   #SENDTYPE 7   #RECVBUF 8   #RECVCOUNTS 9   #DISPLS :   #RECVTYPE ;   #COMM <   #IERROR =          @  
@ @                              5                    
    p          1     1                             
@ @                               6                     
@ @                               7                     D @                              8     
              @  
@ @                              9                        p          1     1                          @  
@ @                              :                        p          1     1                             
@ @                               ;                     
@ @                               <                     D @                               =                                                                   u #MPI_ALLTOALL_T >   #         @     @X                             >                    #SENDBUF ?   #SENDCOUNT @   #SENDTYPE A   #RECVBUF B   #RECVCOUNT C   #RECVTYPE D   #COMM E   #IERROR F          @  
@ @                              ?                    
    p          1     1                             
@ @                               @                     
@ @                               A                     D @                              B     
                 
@ @                               C                     
@ @                               D                     
@ @                               E                     D @                               F                                                                   u #MPI_ALLTOALLV_T G   #         @     @X                             G                 
   #SENDBUF H   #SENDCOUNTS I   #SDISPLS J   #SENDTYPE K   #RECVBUF L   #RECVCOUNTS M   #RDISPLS N   #RECVTYPE O   #COMM P   #IERROR Q          @  
@ @                              H                    
    p          1     1                          @  
@ @                              I                        p          1     1                          @  
@ @                              J                        p          1     1                             
@ @                               K                     D @                              L     
              @  
@ @                              M                        p          1     1                          @  
@ @                              N                        p          1     1                             
@ @                               O                     
@ @                               P                     D @                               Q                                                                   u #MPI_REDUCE_T R   #         @     @X                             R                    #SENDBUF S   #RECVBUF T   #COUNT U   #DATATYPE V   #OP W   #ROOT X   #COMM Y   #IERROR Z          @  
@ @                              S                    
    p          1     1                             D @                              T     
                 
@ @                               U                     
@ @                               V                     
@ @                               W                     
@ @                               X                     
@ @                               Y                     D @                               Z                                                                   u #MPI_ALLREDUCE_T [   #         @     @X                             [                    #SENDBUF \   #RECVBUF ]   #COUNT ^   #DATATYPE _   #OP `   #COMM a   #IERROR b          @  
@ @                              \                    
    p          1     1                             D @                              ]     
                 
@ @                               ^                     
@ @                               _                     
@ @                               `                     
@ @                               a                     D @                               b                                                                   u #MPI_REDUCE_SCATTER_T c   #         @     @X                             c                    #SENDBUF d   #RECVBUF e   #RECVCOUNTS f   #DATATYPE g   #OP h   #COMM i   #IERROR j          @  
@ @                              d                    
    p          1     1                             D @                              e     
              @  
@ @                              f                        p          1     1                             
@ @                               g                     
@ @                               h                     
@ @                               i                     D @                               j                                                                   u #MPI_SCAN_T k   #         @     @X                             k                    #SENDBUF l   #RECVBUF m   #COUNT n   #DATATYPE o   #OP p   #COMM q   #IERROR r          @  
@ @                              l                    
    p          1     1                             D @                              m     
                 
@ @                               n                     
@ @                               o                     
@ @                               p                     
@ @                               q                     D @                               r                   "      fn#fn     Â   İ   b   uapp(MPI__R8_VS      R       gen@MPI_GATHER    ñ  ¼      MPI_GATHER_T %   ­     a   MPI_GATHER_T%SENDBUF '   1  @   a   MPI_GATHER_T%SENDCOUNT &   q  @   a   MPI_GATHER_T%SENDTYPE %   ±  @   a   MPI_GATHER_T%RECVBUF '   ñ  @   a   MPI_GATHER_T%RECVCOUNT &   1  @   a   MPI_GATHER_T%RECVTYPE "   q  @   a   MPI_GATHER_T%ROOT "   ±  @   a   MPI_GATHER_T%COMM $   ñ  @   a   MPI_GATHER_T%IERROR     1  S       gen@MPI_GATHERV      É      MPI_GATHERV_T &   M     a   MPI_GATHERV_T%SENDBUF (   Ñ  @   a   MPI_GATHERV_T%SENDCOUNT '     @   a   MPI_GATHERV_T%SENDTYPE &   Q  @   a   MPI_GATHERV_T%RECVBUF )        a   MPI_GATHERV_T%RECVCOUNTS %        a   MPI_GATHERV_T%DISPLS '     @   a   MPI_GATHERV_T%RECVTYPE #   Ù  @   a   MPI_GATHERV_T%ROOT #   	  @   a   MPI_GATHERV_T%COMM %   Y	  @   a   MPI_GATHERV_T%IERROR     	  S       gen@MPI_SCATTER    ì	  ¼      MPI_SCATTER_T &   ¨
     a   MPI_SCATTER_T%SENDBUF (   ,  @   a   MPI_SCATTER_T%SENDCOUNT '   l  @   a   MPI_SCATTER_T%SENDTYPE &   ¬  @   a   MPI_SCATTER_T%RECVBUF (   ì  @   a   MPI_SCATTER_T%RECVCOUNT '   ,  @   a   MPI_SCATTER_T%RECVTYPE #   l  @   a   MPI_SCATTER_T%ROOT #   ¬  @   a   MPI_SCATTER_T%COMM %   ì  @   a   MPI_SCATTER_T%IERROR !   ,  T       gen@MPI_SCATTERV      É      MPI_SCATTERV_T '   I     a   MPI_SCATTERV_T%SENDBUF *   Í     a   MPI_SCATTERV_T%SENDCOUNTS &   Q     a   MPI_SCATTERV_T%DISPLS (   Õ  @   a   MPI_SCATTERV_T%SENDTYPE '     @   a   MPI_SCATTERV_T%RECVBUF )   U  @   a   MPI_SCATTERV_T%RECVCOUNT (     @   a   MPI_SCATTERV_T%RECVTYPE $   Õ  @   a   MPI_SCATTERV_T%ROOT $     @   a   MPI_SCATTERV_T%COMM &   U  @   a   MPI_SCATTERV_T%IERROR "     U       gen@MPI_ALLGATHER     ê  ²      MPI_ALLGATHER_T (        a   MPI_ALLGATHER_T%SENDBUF *      @   a   MPI_ALLGATHER_T%SENDCOUNT )   `  @   a   MPI_ALLGATHER_T%SENDTYPE (      @   a   MPI_ALLGATHER_T%RECVBUF *   à  @   a   MPI_ALLGATHER_T%RECVCOUNT )      @   a   MPI_ALLGATHER_T%RECVTYPE %   `  @   a   MPI_ALLGATHER_T%COMM '      @   a   MPI_ALLGATHER_T%IERROR #   à  V       gen@MPI_ALLGATHERV !   6  ¿      MPI_ALLGATHERV_T )   õ     a   MPI_ALLGATHERV_T%SENDBUF +   y  @   a   MPI_ALLGATHERV_T%SENDCOUNT *   ¹  @   a   MPI_ALLGATHERV_T%SENDTYPE )   ù  @   a   MPI_ALLGATHERV_T%RECVBUF ,   9     a   MPI_ALLGATHERV_T%RECVCOUNTS (   ½     a   MPI_ALLGATHERV_T%DISPLS *   A  @   a   MPI_ALLGATHERV_T%RECVTYPE &     @   a   MPI_ALLGATHERV_T%COMM (   Á  @   a   MPI_ALLGATHERV_T%IERROR !     T       gen@MPI_ALLTOALL    U  ²      MPI_ALLTOALL_T '        a   MPI_ALLTOALL_T%SENDBUF )     @   a   MPI_ALLTOALL_T%SENDCOUNT (   Ë  @   a   MPI_ALLTOALL_T%SENDTYPE '     @   a   MPI_ALLTOALL_T%RECVBUF )   K  @   a   MPI_ALLTOALL_T%RECVCOUNT (     @   a   MPI_ALLTOALL_T%RECVTYPE $   Ë  @   a   MPI_ALLTOALL_T%COMM &     @   a   MPI_ALLTOALL_T%IERROR "   K  U       gen@MPI_ALLTOALLV        Î      MPI_ALLTOALLV_T (   n     a   MPI_ALLTOALLV_T%SENDBUF +   ò     a   MPI_ALLTOALLV_T%SENDCOUNTS (   v     a   MPI_ALLTOALLV_T%SDISPLS )   ú  @   a   MPI_ALLTOALLV_T%SENDTYPE (   :  @   a   MPI_ALLTOALLV_T%RECVBUF +   z     a   MPI_ALLTOALLV_T%RECVCOUNTS (   ş     a   MPI_ALLTOALLV_T%RDISPLS )      @   a   MPI_ALLTOALLV_T%RECVTYPE %   Â   @   a   MPI_ALLTOALLV_T%COMM '   !  @   a   MPI_ALLTOALLV_T%IERROR    B!  R       gen@MPI_REDUCE    !  £      MPI_REDUCE_T %   7"     a   MPI_REDUCE_T%SENDBUF %   »"  @   a   MPI_REDUCE_T%RECVBUF #   û"  @   a   MPI_REDUCE_T%COUNT &   ;#  @   a   MPI_REDUCE_T%DATATYPE     {#  @   a   MPI_REDUCE_T%OP "   »#  @   a   MPI_REDUCE_T%ROOT "   û#  @   a   MPI_REDUCE_T%COMM $   ;$  @   a   MPI_REDUCE_T%IERROR "   {$  U       gen@MPI_ALLREDUCE     Ğ$        MPI_ALLREDUCE_T (   i%     a   MPI_ALLREDUCE_T%SENDBUF (   í%  @   a   MPI_ALLREDUCE_T%RECVBUF &   -&  @   a   MPI_ALLREDUCE_T%COUNT )   m&  @   a   MPI_ALLREDUCE_T%DATATYPE #   ­&  @   a   MPI_ALLREDUCE_T%OP %   í&  @   a   MPI_ALLREDUCE_T%COMM '   -'  @   a   MPI_ALLREDUCE_T%IERROR '   m'  Z       gen@MPI_REDUCE_SCATTER %   Ç'        MPI_REDUCE_SCATTER_T -   e(     a   MPI_REDUCE_SCATTER_T%SENDBUF -   é(  @   a   MPI_REDUCE_SCATTER_T%RECVBUF 0   ))     a   MPI_REDUCE_SCATTER_T%RECVCOUNTS .   ­)  @   a   MPI_REDUCE_SCATTER_T%DATATYPE (   í)  @   a   MPI_REDUCE_SCATTER_T%OP *   -*  @   a   MPI_REDUCE_SCATTER_T%COMM ,   m*  @   a   MPI_REDUCE_SCATTER_T%IERROR    ­*  P       gen@MPI_SCAN    ı*        MPI_SCAN_T #   +     a   MPI_SCAN_T%SENDBUF #   ,  @   a   MPI_SCAN_T%RECVBUF !   Z,  @   a   MPI_SCAN_T%COUNT $   ,  @   a   MPI_SCAN_T%DATATYPE    Ú,  @   a   MPI_SCAN_T%OP     -  @   a   MPI_SCAN_T%COMM "   Z-  @   a   MPI_SCAN_T%IERROR 