<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 4 : Ecrivez un algorithme permettant, toujours sur le même principe, à l’utilisateur de saisir un nombre déterminé de valeurs. Le programme, une fois la saisie terminée, renvoie la plus grande valeur en précisant quelle position elle occupe dans le tableau." courant="AFFICHER index"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="val EST_DU_TYPE NOMBRE" code="1#NOMBRE#val"/>
        <item algoitem="plus_grand EST_DU_TYPE NOMBRE" code="1#NOMBRE#plus_grand"/>
        <item algoitem="index EST_DU_TYPE NOMBRE" code="1#NOMBRE#index"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez la taille du tableau&quot;" code="4#Entrez la taille du tableau#1"/>
        <item algoitem="LIRE nb" code="2#nb#pasliste"/>
        <item algoitem="somme PREND_LA_VALEUR 0" code="5#somme#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A nb -1" code="12#i#0#nb -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Ajoutez une valeur au tableau&quot;" code="4#Ajoutez une valeur au tableau#1"/>
            <item algoitem="LIRE val" code="2#val#pasliste"/>
            <item algoitem="tab[i] PREND_LA_VALEUR val" code="5#tab#val#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A nb -1" code="12#i#0#nb -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (tab[i] > plus_grand) ALORS" code="6#tab[i] > plus_grand">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="plus_grand PREND_LA_VALEUR tab[i]" code="5#plus_grand#tab[i]#pasliste"/>
                <item algoitem="index PREND_LA_VALEUR i" code="5#index#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Le plus grand est : &quot;" code="4#Le plus grand est : #0"/>
        <item algoitem="AFFICHER plus_grand" code="3#plus_grand#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Son index est : &quot;" code="4#Son index est : #0"/>
        <item algoitem="AFFICHER index" code="3#index#0#pasliste"/>
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
