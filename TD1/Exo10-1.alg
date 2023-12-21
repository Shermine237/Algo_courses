<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 10 : Écrire un algorithme qui permette de connaître ses chances de gagner au tiercé, quarté, quinté et autres impôts volontaires." courant="y PREND_LA_VALEUR x/p_facto"/>
    <extension extnom="inactif"/>
    <fonction fctcode="ALGOBOX_MINIMUM(,,)" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" maxBoucle="500000" totalAffichages="1000" arrondiAuto="faux" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#p" algoitem="p EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#y" algoitem="y EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#p_facto" algoitem="p_facto EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n_facto" algoitem="n_facto EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n_p_facto" algoitem="n_p_facto EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez le nombre de chevaux partants#1" algoitem="AFFICHER &quot;Entrez le nombre de chevaux partants&quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="4#Entrez le nombre de chevaux joués#1" algoitem="AFFICHER &quot;Entrez le nombre de chevaux joués&quot;"/>
        <item code="2#p#pasliste" algoitem="LIRE p"/>
        <item code="5#p_facto#1#pasliste" algoitem="p_facto PREND_LA_VALEUR 1"/>
        <item code="5#n_facto#1#pasliste" algoitem="n_facto PREND_LA_VALEUR 1"/>
        <item code="5#n_p_facto#1#pasliste" algoitem="n_p_facto PREND_LA_VALEUR 1"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#n_facto#n_facto*i#pasliste" algoitem="n_facto PREND_LA_VALEUR n_facto*i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#i#1#n-p" algoitem="POUR i ALLANT_DE 1 A n-p">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#n_p_facto#n_p_facto*i#pasliste" algoitem="n_p_facto PREND_LA_VALEUR n_p_facto*i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#x#n_facto/n_p_facto#pasliste" algoitem="x PREND_LA_VALEUR n_facto/n_p_facto"/>
        <item code="12#i#1#p" algoitem="POUR i ALLANT_DE 1 A p">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#p_facto#p_facto*i#pasliste" algoitem="p_facto PREND_LA_VALEUR p_facto*i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#y#x/p_facto#pasliste" algoitem="y PREND_LA_VALEUR x/p_facto"/>
        <item code="4#Dans l’ordre : 1 chance sur #0" algoitem="AFFICHER &quot;Dans l’ordre : 1 chance sur &quot;"/>
        <item code="3#x#0#pasliste" algoitem="AFFICHER x"/>
        <item code="4# de gagner.#1" algoitem="AFFICHER &quot; de gagner.&quot;"/>
        <item code="4#Dans le désordre : 1 chance sur #0" algoitem="AFFICHER &quot;Dans le désordre : 1 chance sur &quot;"/>
        <item code="3#y#0#pasliste" algoitem="AFFICHER y"/>
        <item code="4# de gagner.#0" algoitem="AFFICHER &quot; de gagner.&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
