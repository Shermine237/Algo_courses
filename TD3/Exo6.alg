<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 6 : Ecrivez un algorithme qui permette de saisir un nombre quelconque de valeurs, et qui les range au fur et à mesure dans un tableau. " courant="saut PREND_LA_VALEUR -1"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" maxBoucle="500000" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="val EST_DU_TYPE NOMBRE" code="1#NOMBRE#val"/>
        <item algoitem="difference EST_DU_TYPE NOMBRE" code="1#NOMBRE#difference"/>
        <item algoitem="arret EST_DU_TYPE NOMBRE" code="1#NOMBRE#arret"/>
        <item algoitem="saut EST_DU_TYPE NOMBRE" code="1#NOMBRE#saut"/>
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
        <item algoitem="SI (tab[1]-tab[0] > 0) ALORS" code="6#tab[1]-tab[0] > 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="saut PREND_LA_VALEUR 1" code="5#saut#1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="saut PREND_LA_VALEUR -1" code="5#saut#-1#pasliste"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="difference PREND_LA_VALEUR saut" code="5#difference#saut#pasliste"/>
        <item algoitem="arret PREND_LA_VALEUR 1" code="5#arret#1#pasliste"/>
        <item algoitem="TANT_QUE (difference == saut ET arret == 1) FAIRE" code="15#difference == saut ET arret == 1">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="POUR i ALLANT_DE 0 A nb -2" code="12#i#0#nb -2">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="difference PREND_LA_VALEUR tab[i+1] - tab[i]" code="5#difference#tab[i+1] - tab[i]#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="arret PREND_LA_VALEUR 0" code="5#arret#0#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="SI (difference == saut) ALORS" code="6#difference == saut">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Consécutifs&quot;" code="4#Consécutifs#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Non consécutifs&quot;" code="4#Non consécutifs#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
