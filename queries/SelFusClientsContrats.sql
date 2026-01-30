SELECT
  TBLCLIENTS.CliNum,
  TBLCLIENTS.CliCode,
  TBLCLIENTS.CliDateCre,
  TBLCLIENTS.CliDateMaj,
  TBLCLIENTS.CliCivCode,
  TBLCLIENTS.CliNom,
  TBLCLIENTS.CliPrenom,
  TBLCLIENTS.CliAdresse,
  TBLVILLES.VilCodePostal AS CliVilCodePostal,
  TBLVILLES.VilNom AS CliVilNom,
  TBLVILLES.VilPays AS CliVilPays,
  TBLCLIENTS.CliTel1Libelle,
  TBLCLIENTS.CliTel1,
  TBLCLIENTS.CliTel2Libelle,
  TBLCLIENTS.CliTel2,
  TBLCLIENTS.CliBatiment,
  TBLCLIENTS.CliEscalier,
  TBLCLIENTS.CliEtage,
  TBLCLIENTS.CliPorte,
  TBLCLIENTS.CliDigicode,
  IIf(
    TBLCLIENTS.CliSousCivCode Is Null,
    TBLCLIENTS.CliCivCode, TBLCLIENTS.CliSousCivCode
  ) AS CliSousCivCode,
  IIf(
    TBLCLIENTS.CliSousNom Is Null, TBLCLIENTS.CliNom,
    TBLCLIENTS.CliSousNom
  ) AS CliSousNom,
  IIf(
    TBLCLIENTS.CliSousPrenom Is Null,
    TBLCLIENTS.CliPrenom, TBLCLIENTS.CliSousPrenom
  ) AS CliSousPrenom,
  IIf(
    TBLCLIENTS.CliSousAdresse Is Null,
    TBLCLIENTS.CliAdresse, TBLCLIENTS.CliSousAdresse
  ) AS CliSousAdresse,
  IIf(
    TBLVILLES_1.VilCodePostal Is Null,
    TBLVILLES.VilCodePostal, TBLVILLES_1.VilCodePostal
  ) AS CliSousVilCodePostal,
  IIf(
    TBLVILLES_1.VilNom Is Null, TBLVILLES.VilNom,
    TBLVILLES_1.VilNom
  ) AS CliSousVilNom,
  IIf(
    TBLVILLES_1.VilPays Is Null, TBLVILLES.VilPays,
    TBLVILLES_1.VilPays
  ) AS CliSousVilPays,
  TBLCLIENTS.CliSousNote,
  IIf(
    TBLCLIENTS.CliSousTel1 Is Null, TBLCLIENTS.CliTel1,
    TBLCLIENTS.CliSousTel1
  ) AS CliSousTel1,
  IIf(
    TBLCLIENTS.CliSousTel1Libelle Is Null,
    TBLCLIENTS.CliTel1Libelle, TBLCLIENTS.CliSousTel1Libelle
  ) AS CliSousTel1Libelle,
  IIf(
    TBLCLIENTS.CliSousTel2 Is Null, TBLCLIENTS.CliTel2,
    TBLCLIENTS.CliSousTel2
  ) AS CliSousTel2,
  IIf(
    TBLCLIENTS.CliSousTel2Libelle Is Null,
    TBLCLIENTS.CliTel2Libelle, TBLCLIENTS.CliSousTel2Libelle
  ) AS CliSousTel2Libelle,
  IIf(
    [CliCivCode] Is Null, [CliSousCivCode],
    [CliCivCode]
  )& " " & IIf(
    [CliNom] Is Null, [CliSousNom], [CliNom]
  )& " " & IIf(
    [CliPrenom] Is Null, [CliSousPrenom],
    [CliPrenom]
  ) AS CliSousDes,
  TBLCLIENTSCHAUDIERES.*,
  TBLCLIENTSCONTRATS.*,
  CStr(
    Format([CliConDateDebut], "dd/mm/yyyy")
  ) AS CliConDateDebutFr,
  CStr(
    Format([CliConDateFin], "dd/mm/yyyy")
  ) AS CliConDateFinFr,
  CDbl(
    - Int(
      -([CliConPrix] * 10 ^ 2)
    )/ 10 ^ 2
  ) AS CliConPrix2
FROM
  TBLVILLES
  RIGHT JOIN (
    (
      (
        TBLCLIENTS
        LEFT JOIN TBLVILLES AS TBLVILLES_1 ON TBLCLIENTS.CliSousVilNum = TBLVILLES_1.VilNum
      )
      INNER JOIN TBLCLIENTSCHAUDIERES ON TBLCLIENTS.CliNum = TBLCLIENTSCHAUDIERES.CliChdCliNum
    )
    INNER JOIN TBLCLIENTSCONTRATS ON TBLCLIENTS.CliNum = TBLCLIENTSCONTRATS.CliConCliNum
  ) ON TBLVILLES.VilNum = TBLCLIENTS.CliVilNum
ORDER BY
  TBLCLIENTS.CliCode,
  TBLCLIENTSCONTRATS.CliConActif,
  [CliConDateDebut] - Date() DESC;
