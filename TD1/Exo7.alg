<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 7 : Ecrire un algorithme qui demande successivement 20 nombres à l’utilisateur, et qui lui dise ensuite quel était le plus grand parmi ces 20 nombres" courant="AFFICHER max_val"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode="ALGOBOX_MINIMUM(,,)"/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#max_val" algoitem="max_val EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="12#i#1#20" algoitem="POUR i ALLANT_DE 1 A 20">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Entrez un nombre#1" algoitem="AFFICHER &quot;Entrez un nombre&quot;"/>
            <item code="2#nb#pasliste" algoitem="LIRE nb"/>
            <item code="6#nb>max_val" algoitem="SI (nb>max_val) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#max_val#nb#pasliste" algoitem="max_val PREND_LA_VALEUR nb"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le plus grand : #0" algoitem="AFFICHER &quot;Le plus grand : &quot;"/>
        <item code="3#max_val#1#pasliste" algoitem="AFFICHER max_val"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
