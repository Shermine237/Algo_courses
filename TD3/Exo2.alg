<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER somme" texte="Exercice 2 : Ecrivez un algorithme calculant la somme des valeurs d’un tableau (on suppose que le tableau a été préalablement saisi)."/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#val" algoitem="val EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez la taille du tableau#1" algoitem="AFFICHER &quot;Entrez la taille du tableau&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="12#i#0#nb -1" algoitem="POUR i ALLANT_DE 0 A nb -1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Ajoutez une valeur au tableau#1" algoitem="AFFICHER &quot;Ajoutez une valeur au tableau&quot;"/>
            <item code="2#val#pasliste" algoitem="LIRE val"/>
            <item code="5#tab#val#i" algoitem="tab[i] PREND_LA_VALEUR val"/>
            <item code="5#somme#somme + val#pasliste" algoitem="somme PREND_LA_VALEUR somme + val"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#La somme est : #0" algoitem="AFFICHER &quot;La somme est : &quot;"/>
        <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
