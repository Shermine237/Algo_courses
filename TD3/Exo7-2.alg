<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="tab[i+1] PREND_LA_VALEUR tmp" texte="Exercice 7 : Ecrivez un algorithme qui trie un tableau dans l’ordre décroissant. cas 2:  le tri à bulles."/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" arrondiAuto="vrai" epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" totalAffichages="1000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="val EST_DU_TYPE NOMBRE" code="1#NOMBRE#val"/>
        <item algoitem="index EST_DU_TYPE NOMBRE" code="1#NOMBRE#index"/>
        <item algoitem="tmp EST_DU_TYPE NOMBRE" code="1#NOMBRE#tmp"/>
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
        <item algoitem="POUR index ALLANT_DE 0 A nb -1" code="12#index#0#nb -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="POUR i ALLANT_DE 0 A nb -index -1" code="12#i#0#nb -index -1">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (tab[i+1] > tab[i]) ALORS" code="6#tab[i+1] > tab[i]">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="tmp PREND_LA_VALEUR tab[i]" code="5#tmp#tab[i]#pasliste"/>
                    <item algoitem="tab[i] PREND_LA_VALEUR tab[i+1]" code="5#tab#tab[i+1]#i"/>
                    <item algoitem="tab[i+1] PREND_LA_VALEUR tmp" code="5#tab#tmp#i+1"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Le tableau trie est : &quot;" code="4#Le tableau trie est : #1"/>
        <item algoitem="POUR i ALLANT_DE 0 A nb -1" code="12#i#0#nb -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tab[i]" code="3#tab#0#i"/>
            <item algoitem="AFFICHER &quot;; &quot;" code="4#; #0"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
