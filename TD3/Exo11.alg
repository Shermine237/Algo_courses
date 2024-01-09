<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="//Fusion des tableaux tries" texte="Exercice 11 : Écrivez un algorithme qui fusionne deux tableaux (déjà existants) dans un troisième"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" nbDecimales="8" epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="taille_tableau1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#taille_tableau1"/>
        <item algoitem="taille_tableau2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#taille_tableau2"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="k EST_DU_TYPE NOMBRE" code="1#NOMBRE#k"/>
        <item algoitem="tableau1 EST_DU_TYPE LISTE" code="1#LISTE#tableau1"/>
        <item algoitem="tableau2 EST_DU_TYPE LISTE" code="1#LISTE#tableau2"/>
        <item algoitem="tableau3 EST_DU_TYPE LISTE" code="1#LISTE#tableau3"/>
        <item algoitem="tmp EST_DU_TYPE NOMBRE" code="1#NOMBRE#tmp"/>
        <item algoitem="min_index EST_DU_TYPE NOMBRE" code="1#NOMBRE#min_index"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//Constrruction des tableaux" code="19#Constrruction des tableaux"/>
        <item algoitem="AFFICHER &quot;Entrez la taille du 1er tableau &quot;" code="4#Entrez la taille du 1er tableau #1"/>
        <item algoitem="LIRE taille_tableau1" code="2#taille_tableau1#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A taille_tableau1 -1" code="12#i#0#taille_tableau1 -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Entrez un nombre au tableau&quot;" code="4#Entrez un nombre au tableau#1"/>
            <item algoitem="LIRE tmp" code="2#tmp#pasliste"/>
            <item algoitem="tableau1[i] PREND_LA_VALEUR tmp" code="5#tableau1#tmp#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Entrez la taille du 2eme tableau &quot;" code="4#Entrez la taille du 2eme tableau #1"/>
        <item algoitem="LIRE taille_tableau2" code="2#taille_tableau2#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A taille_tableau2 -1" code="12#i#0#taille_tableau2 -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Emtrez un nombre au tableau&quot;" code="4#Emtrez un nombre au tableau#1"/>
            <item algoitem="LIRE tmp" code="2#tmp#pasliste"/>
            <item algoitem="tableau2[i] PREND_LA_VALEUR tmp" code="5#tableau2#tmp#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="//Trie des tableaux" code="19#Trie des tableaux"/>
        <item algoitem="POUR i ALLANT_DE 0 A taille_tableau1 -1" code="12#i#0#taille_tableau1 -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="min_index PREND_LA_VALEUR i" code="5#min_index#i#pasliste"/>
            <item algoitem="POUR j ALLANT_DE i A taille_tableau1 -1" code="12#j#i#taille_tableau1 -1">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (tableau1[j] &lt; tableau1[min_index]) ALORS" code="6#tableau1[j] &lt; tableau1[min_index]">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="min_index PREND_LA_VALEUR j" code="5#min_index#j#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="tmp PREND_LA_VALEUR tableau1[i]" code="5#tmp#tableau1[i]#pasliste"/>
            <item algoitem="tableau1[i] PREND_LA_VALEUR tableau1[min_index]" code="5#tableau1#tableau1[min_index]#i"/>
            <item algoitem="tableau1[min_index] PREND_LA_VALEUR tmp" code="5#tableau1#tmp#min_index"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A taille_tableau2 -1" code="12#i#0#taille_tableau2 -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="min_index PREND_LA_VALEUR i" code="5#min_index#i#pasliste"/>
            <item algoitem="POUR j ALLANT_DE i A taille_tableau2 -1" code="12#j#i#taille_tableau2 -1">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (tableau2[j] &lt; tableau2[min_index]) ALORS" code="6#tableau2[j] &lt; tableau2[min_index]">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="min_index PREND_LA_VALEUR j" code="5#min_index#j#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="tmp PREND_LA_VALEUR tableau2[i]" code="5#tmp#tableau2[i]#pasliste"/>
            <item algoitem="tableau2[i] PREND_LA_VALEUR tableau2[min_index]" code="5#tableau2#tableau2[min_index]#i"/>
            <item algoitem="tableau2[min_index] PREND_LA_VALEUR tmp" code="5#tableau2#tmp#min_index"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="//Fusion des tableaux tries" code="19#Fusion des tableaux tries"/>
        <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
        <item algoitem="j PREND_LA_VALEUR 0" code="5#j#0#pasliste"/>
        <item algoitem="k PREND_LA_VALEUR 0" code="5#k#0#pasliste"/>
        <item algoitem="TANT_QUE (i &lt; taille_tableau1 ET j &lt; taille_tableau2) FAIRE" code="15#i &lt; taille_tableau1 ET j &lt; taille_tableau2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (tableau1[i] &lt;= tableau2[j]) ALORS" code="6#tableau1[i] &lt;= tableau2[j]">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="tableau3[k] PREND_LA_VALEUR tableau1[i]" code="5#tableau3#tableau1[i]#k"/>
                <item algoitem="i PREND_LA_VALEUR i +1" code="5#i#i +1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="tableau3[k] PREND_LA_VALEUR tableau2[j]" code="5#tableau3#tableau2[j]#k"/>
                    <item algoitem="j PREND_LA_VALEUR j +1" code="5#j#j +1#pasliste"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="k PREND_LA_VALEUR k +1" code="5#k#k +1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="//Copie les éléments restants du tableau1" code="19#Copie les éléments restants du tableau1"/>
        <item algoitem="TANT_QUE (i &lt; taille_tableau1) FAIRE" code="15#i &lt; taille_tableau1">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="tableau3[k] PREND_LA_VALEUR tableau1[i]" code="5#tableau3#tableau1[i]#k"/>
            <item algoitem="i PREND_LA_VALEUR i +1" code="5#i#i +1#pasliste"/>
            <item algoitem="k PREND_LA_VALEUR k +1" code="5#k#k +1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="//Copie les éléments restants du tableau2" code="19#Copie les éléments restants du tableau2"/>
        <item algoitem="TANT_QUE (j &lt; taille_tableau2) FAIRE" code="15#j &lt; taille_tableau2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="tableau3[k] PREND_LA_VALEUR tableau2[j]" code="5#tableau3#tableau2[j]#k"/>
            <item algoitem="j PREND_LA_VALEUR j +1" code="5#j#j +1#pasliste"/>
            <item algoitem="k PREND_LA_VALEUR k +1" code="5#k#k +1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A taille_tableau1 + taille_tableau2 -1" code="12#i#0#taille_tableau1 + taille_tableau2 -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tableau3[i]" code="3#tableau3#0#i"/>
            <item algoitem="AFFICHER &quot;  &quot;" code="4#  #0"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
