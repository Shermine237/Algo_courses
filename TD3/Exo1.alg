<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER nb_positif" texte="Exercice 1 : Ecrivez un algorithme permettant à l’utilisateur de saisir un nombre quelconque de valeurs, qui devront être stockées dans un tableau"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" nbDecimales="8" totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="val EST_DU_TYPE NOMBRE" code="1#NOMBRE#val"/>
        <item algoitem="nb_positif EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb_positif"/>
        <item algoitem="nb_negatif EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb_negatif"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez le nombre valeurs&quot;" code="4#Entrez le nombre valeurs#1"/>
        <item algoitem="LIRE nb" code="2#nb#pasliste"/>
        <item algoitem="nb_positif PREND_LA_VALEUR 0" code="5#nb_positif#0#pasliste"/>
        <item algoitem="nb_negatif PREND_LA_VALEUR 0" code="5#nb_negatif#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A nb -1" code="12#i#0#nb -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Entrez une valeur&quot;" code="4#Entrez une valeur#1"/>
            <item algoitem="LIRE val" code="2#val#pasliste"/>
            <item algoitem="tab[i] PREND_LA_VALEUR val" code="5#tab#val#i"/>
            <item algoitem="SI (val &lt; 0) ALORS" code="6#val &lt; 0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="nb_negatif PREND_LA_VALEUR nb_negatif +1" code="5#nb_negatif#nb_negatif +1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="SI (val > 0) ALORS" code="6#val > 0">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="nb_positif PREND_LA_VALEUR nb_positif +1" code="5#nb_positif#nb_positif +1#pasliste"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                    </item>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Nombre de negatifs : &quot;" code="4#Nombre de negatifs : #0"/>
        <item algoitem="AFFICHER nb_negatif" code="3#nb_negatif#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Nombre de positifs : &quot;" code="4#Nombre de positifs : #0"/>
        <item algoitem="AFFICHER nb_positif" code="3#nb_positif#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
