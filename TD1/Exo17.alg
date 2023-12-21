<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="result PREND_LA_VALEUR result + tab1[i]*tab2[j]" texte="Exercice 17 : Toujours à partir de deux tableaux précédemment saisis, écrivez un algorithme qui calcule le schtroumpf des deux tableaux"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode="ALGOBOX_MINIMUM(,,)"/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" maxBoucle="500000" arrondiAuto="faux" totalBoucles="5000000" nbDecimales="8" epaisseurPoint="2" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab1" algoitem="tab1 EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#tab2" algoitem="tab2 EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#taille_tab1" algoitem="taille_tab1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#taille_tab2" algoitem="taille_tab2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#val" algoitem="val EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#result" algoitem="result EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#val#1#pasliste" algoitem="val PREND_LA_VALEUR 1"/>
        <item code="5#taille_tab1#1#pasliste" algoitem="taille_tab1 PREND_LA_VALEUR 1"/>
        <item code="5#taille_tab2#1#pasliste" algoitem="taille_tab2 PREND_LA_VALEUR 1"/>
        <item code="15#val!=0" algoitem="TANT_QUE (val!=0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Entrez les nombres du tableau 1 (0 pour terminer)#1" algoitem="AFFICHER &quot;Entrez les nombres du tableau 1 (0 pour terminer)&quot;"/>
            <item code="2#val#pasliste" algoitem="LIRE val"/>
            <item code="5#tab1#val#taille_tab1" algoitem="tab1[taille_tab1] PREND_LA_VALEUR val"/>
            <item code="5#taille_tab1#taille_tab1+1#pasliste" algoitem="taille_tab1 PREND_LA_VALEUR taille_tab1+1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="5#val#1#pasliste" algoitem="val PREND_LA_VALEUR 1"/>
        <item code="15#val!=0" algoitem="TANT_QUE (val!=0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Entrez les nombres du tableau 2 (0 pour terminer)#1" algoitem="AFFICHER &quot;Entrez les nombres du tableau 2 (0 pour terminer)&quot;"/>
            <item code="2#val#pasliste" algoitem="LIRE val"/>
            <item code="5#tab2#val#taille_tab2" algoitem="tab2[taille_tab2] PREND_LA_VALEUR val"/>
            <item code="5#taille_tab2#taille_tab2+1#pasliste" algoitem="taille_tab2 PREND_LA_VALEUR taille_tab2+1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="12#i#1#taille_tab1-1" algoitem="POUR i ALLANT_DE 1 A taille_tab1-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="12#j#1#taille_tab2-1" algoitem="POUR j ALLANT_DE 1 A taille_tab2-1">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="5#result#result + tab1[i]*tab2[j]#pasliste" algoitem="result PREND_LA_VALEUR result + tab1[i]*tab2[j]"/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le schtroumpf est : #0" algoitem="AFFICHER &quot;Le schtroumpf est : &quot;"/>
        <item code="3#result#1#pasliste" algoitem="AFFICHER result"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
