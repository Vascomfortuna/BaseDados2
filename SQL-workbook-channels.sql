SELECT O100022.CLASSE, O100146.MES, SUM(O100170.LUCRO)
FROM BDII_1010834.DIM_CANAIS O100022, BDII_1010834.DIM_TEMPO O100146, BDII_1010834.FAC_VENDAS O100170
WHERE ( ( O100022.SURR_CANAL = O100170.SURR_CANAL ) AND ( O100146.SURR_TEMPO = O100170.SURR_TEMPO ) ) AND ( O100146.ANO = :"ano" )
GROUP BY O100022.CLASSE, O100146.MES
;