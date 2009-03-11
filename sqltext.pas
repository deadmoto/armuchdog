unit sqltext;

interface

const
  nomencl='SELECT * FROM NomenclDog';

  regionid='SELECT * FROM RegionID';

  balance='SELECT SUM(ReestrDog.SUM_DOG%s) AS sum_nom, NomenclDog.ID_NOMENCL, NomenclDog.NAME'+#13+
          'FROM ReestrDog INNER JOIN'+#13+
          'NomenclDog ON ReestrDog.ID_NOMENCL%s = NomenclDog.ID_NOMENCL'+#13+
          'WHERE datepart(q,ReestrDog.DATA_DOG) = datepart(q,GETDATE())'+#13+
          'AND year(ReestrDog.DATA_DOG)=year(GETDATE()) and ReestrDog.ID_NOMENCL%s =:p'+#13+
          'AND STATUS<>1'+#13+
          'GROUP BY NomenclDog.ID_NOMENCL, NomenclDog.NAME';

  balance1='SELECT SUM(ReestrDog.SUM_DOG1) AS sum_nom, NomenclDog.ID_NOMENCL, NomenclDog.NAME'+#13+
           'FROM ReestrDog INNER JOIN'+#13+
           'NomenclDog ON ReestrDog.ID_NOMENCL1 = NomenclDog.ID_NOMENCL'+#13+
           'WHERE datepart(q,ReestrDog.DATA_DOG) = datepart(q,GETDATE())'+#13+
           'AND year(ReestrDog.DATA_DOG)=year(GETDATE()) and ReestrDog.ID_NOMENCL1 =:p'+#13+
           'AND STATUS<>1'+#13+
           'GROUP BY NomenclDog.ID_NOMENCL, NomenclDog.NAME';

  balance2='SELECT SUM(ReestrDog.SUM_DOG2) AS sum_nom, NomenclDog.ID_NOMENCL, NomenclDog.NAME'+#13+
           'FROM ReestrDog INNER JOIN'+#13+
           'NomenclDog ON ReestrDog.ID_NOMENCL2 = NomenclDog.ID_NOMENCL'+#13+
           'WHERE datepart(q,ReestrDog.DATA_DOG) = datepart(q,GETDATE())'+#13+
           'AND year(ReestrDog.DATA_DOG)=year(GETDATE()) and ReestrDog.ID_NOMENCL2 =:p'+#13+
           'AND STATUS<>1'+#13+
           'GROUP BY NomenclDog.ID_NOMENCL, NomenclDog.NAME';

  balance3='SELECT SUM(ReestrDog.SUM_DOG3) AS sum_nom, NomenclDog.ID_NOMENCL, NomenclDog.NAME'+#13+
           'FROM ReestrDog INNER JOIN'+#13+
           'NomenclDog ON ReestrDog.ID_NOMENCL3 = NomenclDog.ID_NOMENCL'+#13+
           'WHERE datepart(q,ReestrDog.DATA_DOG) = datepart(q,GETDATE())'+#13+
           'AND year(ReestrDog.DATA_DOG)=year(GETDATE()) and ReestrDog.ID_NOMENCL3 =:p'+#13+
           'AND STATUS<>1'+#13+
           'GROUP BY NomenclDog.ID_NOMENCL, NomenclDog.NAME';

  balance4='SELECT SUM(ReestrDog.SUM_DOG4) AS sum_nom, NomenclDog.ID_NOMENCL, NomenclDog.NAME'+#13+
           'FROM ReestrDog INNER JOIN'+#13+
           'NomenclDog ON ReestrDog.ID_NOMENCL4 = NomenclDog.ID_NOMENCL'+#13+
           'WHERE datepart(q,ReestrDog.DATA_DOG) = datepart(q,GETDATE())'+#13+
           'AND year(ReestrDog.DATA_DOG)=year(GETDATE()) and ReestrDog.ID_NOMENCL4 =:p'+#13+
           'AND STATUS<>1'+#13+
           'GROUP BY NomenclDog.ID_NOMENCL, NomenclDog.NAME';

  balance5='SELECT SUM(ReestrDog.SUM_DOG5) AS sum_nom, NomenclDog.ID_NOMENCL, NomenclDog.NAME'+#13+
           'FROM ReestrDog INNER JOIN'+#13+
           'NomenclDog ON ReestrDog.ID_NOMENCL5 = NomenclDog.ID_NOMENCL'+#13+
           'WHERE datepart(q,ReestrDog.DATA_DOG) = datepart(q,GETDATE())'+#13+
           'AND year(ReestrDog.DATA_DOG)=year(GETDATE()) and ReestrDog.ID_NOMENCL5 =:p'+#13+
           'AND STATUS<>1'+#13+
           'GROUP BY NomenclDog.ID_NOMENCL, NomenclDog.NAME';

  report_okved2='SELECT * FROM ReestrDog'+#13+
               'INNER JOIN NOMENCLDOG'+#13+
               'ON NomenclDOG.ID_NOMENCL=:okved'+#13+
               'WHERE (DATA_DOG>=:start AND DATA_DOG<:end)'+#13+
               'AND ((ID_NOMENCL1=:okved)'+#13+
               'OR (ID_NOMENCL2=:okved)'+#13+
               'OR (ID_NOMENCL3=:okved)'+#13+
               'OR (ID_NOMENCL4=:okved)'+#13+
               'OR (ID_NOMENCL5=:okved))';

  report_okved='SELECT ReestrDog.ID_NOMENCL1 AS ID_NOMENCL, NomenclDog.NAME AS NOMENCLNAME,'+#13+
                'RegionIDDog.FLDNAME AS REGION,ReestrDog.REGN,Supplier.SUPPLIER,ReestrDog.SUM_DOG1 AS [SUM]'+#13+
                'FROM ReestrDog INNER JOIN'+#13+
                'Supplier ON ReestrDog.ID_SUPPLIER = Supplier.ID_SUPPLIE INNER JOIN'+#13+
                'NomenclDog ON ReestrDog.ID_NOMENCL1 = NomenclDog.ID_NOMENCL INNER JOIN'+#13+
                'RegionIDDog ON ReestrDog.FLDID = RegionIDDog.FLDID'+#13+
                'WHERE (DATA_DOG>=:start AND DATA_DOG<:end)'+#13+
                'AND (ID_NOMENCL1=:okved)';

implementation

end.
