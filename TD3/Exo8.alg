<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 8 : Ecrivez un algorithme qui inverse l’ordre des éléments d’un tableau dont on suppose qu'il a été préalablement saisi (« les premiers seront les derniers… »)" courant="POUR i ALLANT_DE 0 A (nb -1)/2"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" epaisseurLigne="2" arrondiAuto="vrai" maxBoucle="500000" totalAffichages="1000" nbDecimales="8" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#val" algoitem="val EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tmp" algoitem="tmp EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez la taille du tableau#1" algoitem="AFFICHER &quot;Entrez la taille du tableau&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="12#i#0#nb -1" algoitem="POUR i ALLANT_DE 0 A nb -1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Ajoutez une valeur au tableau#1" algoitem="AFFICHER &quot;Ajoutez une valeur au tableau&quot;"/>
            <item code="2#val#pasliste" algoitem="LIRE val"/>
            <item code="5#tab#val#i" algoitem="tab[i] PREND_LA_VALEUR val"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#i#0#(nb -1)/2" algoitem="POUR i ALLANT_DE 0 A (nb -1)/2">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tmp#tab[i]#pasliste" algoitem="tmp PREND_LA_VALEUR tab[i]"/>
            <item code="5#tab#tab[nb -1 -i]#i" algoitem="tab[i] PREND_LA_VALEUR tab[nb -1 -i]"/>
            <item code="5#tab#tmp#nb -1 -i" algoitem="tab[nb -1 -i] PREND_LA_VALEUR tmp"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le tableau inverse est : #1" algoitem="AFFICHER &quot;Le tableau inverse est : &quot;"/>
        <item code="12#i#0#nb -1" algoitem="POUR i ALLANT_DE 0 A nb -1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#tab#0#i" algoitem="AFFICHER tab[i]"/>
            <item code="4#; #0" algoitem="AFFICHER &quot;; &quot;"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
