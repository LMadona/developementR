
R version 4.2.1 (2022-06-23 ucrt) -- "Funny-Looking Kid"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> library(readxl)
> resultats_pres2022 <- read_excel("resultats_pres2022.xlsx")
> View(resultats_pres2022)
> summary(resultats_pres2022$Part_Macron)
> moyenneMacron <- mean(resultats_pres2022$Part_Macron) 
> moyenneMacron
[1] 26.22618
> summary(resultats_pres2022$Part_abs)
> paste("La moyenne des parts de vote Macron est de ", moyenneMacron)
[1] "La moyenne des parts de vote Macron est de  26.2261807927442"
> paste("Le % d'abstention est de : ", moyenneMacron)
[1] "Le % d'abstention est de :  26.2261807927442"
> moyenneabs<-mean(resultats_pres2022$Part_abs)
> paste("Le % d'abstention est de : ", moyenneabs,"%")
[1] "Le % d'abstention est de :  24.1192173014552 %"
> paste("Le % d'abstention est de : ", moyenneabs,round(2),"%")
[1] "Le % d'abstention est de :  24.1192173014552 2 %"
> paste("Le % d'abstention est de : ",round(moyenneabs,2),"%")
[1] "Le % d'abstention est de :  24.12 %"
> Requete1 <- resultats_pres2022 [resultats_pres2022$Part_LePen > 10 , ]
> View (Requete1) // permet de visualiser la nouvelle extraction
Error: unexpected '/' in "View (Requete1) //"
> Requete1 <- resultats_pres2022 [resultats_pres2022$Part_LePen > 10 , ]
> View (Requete1)
> cout(requete1)
Error in cout(requete1) : could not find function "cout"
> count(requete1)
Error in count(requete1) : could not find function "count"
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> count(requete1)
Error in count(requete1) : object 'requete1' not found
> count(Requete1)
# A tibble: 1 × 1
      n
  <int>
1 64347
> Requete2 <- resultats_pres2022 [resultats_pres2022$Part_LePen > 30 & resultats_pres2022$Part_LePen < 60 , ]
> View(Requete2)
> voteJadot2040<- resultats_pres2022 [resultats_pres2022$Part_Jadot >= 20 & resultats_pres2022$Part_Jadot<=40,]
> View(voteJadot2040)
> voteJadot2040<- resultats_pres2022 [resultats_pres2022$Part_Jadot > 20 & resultats_pres2022$Part_Jadot<40,]
> View(voteJadot2040)
> View(voteJadot2040)
> voteRochefort <- resultats_pres2022 [resultats_pres2022$Libelle =='Rochefort' & resultats_pres2022$Code_dep == '17' ,]
> View (voteRochefort) // permet de visualiser la nouvelle extraction
Error: unexpected '/' in "View (voteRochefort) //"
> voteRochefort <- resultats_pres2022 [resultats_pres2022$Libelle =='Rochefort' & resultats_pres2022$Code_dep == '17' ,]
> View (voteRochefort)
> voteSaintes <- resultats_pres2022 [resultats_pres2022$Libelle =='Saintes' & resultats_pres2022$Code_dep == '17' ,]
> View (voteSaintes)
> write.csv(voteSaintes, "C:\\FUTURE_D\\LPSIG\\03-COURS\\13-R_GITHUB\\voteSaintes.csv")
> voteCandidats1_4 <- resultats_pres2022 [ , c("Part_Macron", "Part_LePen", "Part_Melenchon", "Part_Pecresse")]
> View (voteCandidats1_4)
> typeof(voteCandidats1_4)
[1] "list"
> sapply(voteCandidats1_4, class)
   Part_Macron     Part_LePen Part_Melenchon  Part_Pecresse 
     "numeric"      "numeric"      "numeric"      "numeric" 
> voteSaintes_Candidats1_3 <- resultats_pres2022 [voteSaintes , c("Part_Macron", "Part_LePen", "Part_Melenchon", "Part_Pecresse")]
Error in `vectbl_as_row_location()`:
! Must subset rows with a valid subscript vector.
✖ Subscript `voteSaintes` has the wrong type `tbl_df<
  Code_dep         : character
  Libelle_dep      : character
  Code_circo       : character
  Libelle_circo    : character
  Code_com         : character
  Libelle          : character
  Code_BV          : character
  Nb_Ins           : character
  Nb_abs           : double
  Part_abs         : double
  Nb_Blancs        : double
  Part_Blanc       : double
  Nb_Expr          : double
  Part_expr        : double
  Nb_Arthaud       : double
  Part_Arthaud     : double
  Part_Roussel     : double
  Nb_Macron        : double
  Part_Macron      : double
  Nb_Lassalle      : double
  Part_Lassalle    : double
  Nb_LePen         : double
  Part_LePen       : double
  Nb_Zemmour       : double
  Part_Zemmour     : double
  Nb_Melenchon     : double
  Part_Melenchon   : double
  Nb_Hidalgo       : double
  Part_Hidalgo     : double
  Nb_Jadot         : double
  Part_Jadot       : double
  Nb_Pecresse      : double
  Part_Pecresse    : double
  Nb_Poutou        : double
  Part_Poutou      : double
  Nb_DupontAignan  : double
  Part_DupontAignan: double
>`.
ℹ It must be logical, numeric, or character.
Run `rlang::last_error()` to see where the error occurred.
> voteSaintes_Candidats1_3 <- resultats_pres2022 [voteSaintes , ("Part_Macron", "Part_LePen", "Part_Melenchon", "Part_Pecresse")]
Error: unexpected ',' in "voteSaintes_Candidats1_3 <- resultats_pres2022 [voteSaintes , ("Part_Macron","
> voteSaintes_Candidats1_3 <- voteSaintes [("Part_Macron", "Part_LePen", "Part_Melenchon", "Part_Pecresse")]
Error: unexpected ',' in "voteSaintes_Candidats1_3 <- voteSaintes [("Part_Macron","
> voteSaintes_Candidats1_3 <- voteSaintes [c("Part_Macron", "Part_LePen", "Part_Melenchon", "Part_Pecresse")]
> View(voteSaintes_Candidats1_3)
> voteCandidats1_4$colonneTest <- NA
> voteCandidats1_4$colonneTest <- voteCandidats1_4$Part_Macron + voteCandidats1_4$Part_Pecresse
> View (voteCandidats1_4)
> voteCandidats1_4$colonneTest <- ifelse(voteCandidats1_4$Part_Macron > 25, voteCandidats1_4$Part_Macron + voteCandidats1_4$Part_Pecresse,
+                                        NA)
> voteCandidats1_4$colonneTest <- ifelse(voteCandidats1_4$Part_Macron > 25, voteCandidats1_4$Part_Macron + voteCandidats1_4$Part_Pecresse,NA)
> library(tidyr)
> Transpo<-voteCandidats1_4%>%pivot_longer(
+     cols = c(Part_Macron, Part_LePen, Part_Melenchon, Part_Pecresse),
+     names_to="Candidat", values_to="Parts_vote")
> View(Transpo)
> Transpo<-voteCandidats1_4%>%pivot_longer(cols = c(Part_Macron, Part_LePen, Part_Melenchon, Part_Pecresse) names_to="Candidat", values_to="Parts_vote")
Error: unexpected symbol in "Transpo<-voteCandidats1_4%>%pivot_longer(cols = c(Part_Macron, Part_LePen, Part_Melenchon, Part_Pecresse) names_to"
> Transpo<-voteCandidats1_4%>%pivot_longer(cols = c(Part_Macron, Part_LePen, Part_Melenchon, Part_Pecresse), names_to="Candidat", values_to="Parts_vote")
> View(Transpo)
> voteSaintes_Candidats1_3$MacronSup30 <- ifelse(voteSaintes_Candidats1_3$Part_Macron > 30, "MacronSup30",NA)
> View(voteSaintes_Candidats1_3)
> count(voteSaintes_Candidats1_3,ifelse(MacronSup30,NA)
+ 
+ count(voteSaintes_Candidats1_3,MacronSup30)
Error: unexpected symbol in:
"
count"
> count(voteSaintes_Candidats1_3,"MacronSup30")
# A tibble: 1 × 2
  `"MacronSup30"`     n
  <chr>           <int>
1 MacronSup30        19
count(voteSaintes_Candidats1_3,"MacronSup30"

> count <- length(which(voteSaintes_Candidats1_3$MacronSup30 == "MacronSup30"))
> count
[1] 8
> sapply(voteCandidats1_4, mean)
   Part_Macron     Part_LePen Part_Melenchon  Part_Pecresse    colonneTest 
     26.226181      25.402459      20.756481       4.888928             NA 
> tapply(resultats_pres2022$Part_abs,resultats_pres2022$Libelle_dep, mean )

> dataList <- c("Part_Macron", "Part_LePen", "Part_Melenchon")
> for(i in dataList){
+     print(i)
+ }
[1] "Part_Macron"
[1] "Part_LePen"
[1] "Part_Melenchon"
> dataList <- c("Part_Macron", "Part_LePen", "Part_Melenchon")
> for(i in dataList){
+     print(summary(resultats_pres2022[, i]))
+ }
  Part_Macron    
 Min.   :  0.00  
 1st Qu.: 20.84  
 Median : 25.75  
 Mean   : 26.23  
 3rd Qu.: 31.12  
 Max.   :100.00  
   Part_LePen    
 Min.   :  0.00  
 1st Qu.: 17.90  
 Median : 25.23  
 Mean   : 25.40  
 3rd Qu.: 32.51  
 Max.   :100.00  
 Part_Melenchon  
 Min.   :  0.00  
 1st Qu.: 13.67  
 Median : 17.91  
 Mean   : 20.76  
 3rd Qu.: 24.14  
 Max.   :100.00  
> 