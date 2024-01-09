<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER moyenne" texte="Exercice 5 : Toujours et encore sur le même principe, écrivez un algorithme permettant, à l’utilisateur de saisir les notes d'une classe."/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" totalAffichages="1000" nbDecimales="8" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#val" algoitem="val EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#total_notes" algoitem="total_notes EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyenne" algoitem="moyenne EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nb_moyennes" algoitem="nb_moyennes EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez la taille du tableau#1" algoitem="AFFICHER &quot;Entrez la taille du tableau&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="12#i#0#nb -1" algoitem="POUR i ALLANT_DE 0 A nb -1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Ajoutez une valeur au tableau#1" algoitem="AFFICHER &quot;Ajoutez une valeur au tableau&quot;"/>
            <item code="2#val#pasliste" algoitem="LIRE val"/>
            <item code="5#tab#val#i" algoitem="tab[i] PREND_LA_VALEUR val"/>
            <item code="5#total_notes#total_notes + val#pasliste" algoitem="total_notes PREND_LA_VALEUR total_notes + val"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#moyenne#total_notes / nb#pasliste" algoitem="moyenne PREND_LA_VALEUR total_notes / nb"/>
        <item code="5#nb_moyennes#0#pasliste" algoitem="nb_moyennes PREND_LA_VALEUR 0"/>
        <item code="12#i#0#nb -1" algoitem="POUR i ALLANT_DE 0 A nb -1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#tab[i] > moyenne" algoitem="SI (tab[i] > moyenne) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#nb_moyennes#nb_moyennes +1#pasliste" algoitem="nb_moyennes PREND_LA_VALEUR nb_moyennes +1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#La moyenne de la classe est : #0" algoitem="AFFICHER &quot;La moyenne de la classe est : &quot;"/>
        <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
        <item code="4#Le nombre de notes au dessus de la moyenne de la classe est : #0" algoitem="AFFICHER &quot;Le nombre de notes au dessus de la moyenne de la classe est : &quot;"/>
        <item code="3#nb_moyennes#1#pasliste" algoitem="AFFICHER nb_moyennes"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
