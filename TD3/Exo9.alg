<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 9 : Ecrivez un algorithme qui permette à l’utilisateur de supprimer une valeur d’un tableau préalablement saisi." courant="POUR i ALLANT_DE 0 A nb -2"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurLigne="2" totalAffichages="1000" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="val EST_DU_TYPE NOMBRE" code="1#NOMBRE#val"/>
        <item algoitem="tmp EST_DU_TYPE NOMBRE" code="1#NOMBRE#tmp"/>
        <item algoitem="index EST_DU_TYPE NOMBRE" code="1#NOMBRE#index"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez la taille du tableau&quot;" code="4#Entrez la taille du tableau#1"/>
        <item algoitem="LIRE nb" code="2#nb#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A nb -1" code="12#i#0#nb -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Ajoutez une valeur au tableau&quot;" code="4#Ajoutez une valeur au tableau#1"/>
            <item algoitem="LIRE val" code="2#val#pasliste"/>
            <item algoitem="tab[i] PREND_LA_VALEUR val" code="5#tab#val#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Entrez l'indice de l'element a efface&quot;" code="4#Entrez l'indice de l'element a efface#1"/>
        <item algoitem="LIRE index" code="2#index#pasliste"/>
        <item algoitem="POUR i ALLANT_DE index A nb-2" code="12#i#index#nb-2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="tab[i] PREND_LA_VALEUR tab[i+1]" code="5#tab#tab[i+1]#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Le nouveau tableau est : &quot;" code="4#Le nouveau tableau est : #1"/>
        <item algoitem="POUR i ALLANT_DE 0 A nb -2" code="12#i#0#nb -2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tab[i]" code="3#tab#0#i"/>
            <item algoitem="AFFICHER &quot;; &quot;" code="4#; #0"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
