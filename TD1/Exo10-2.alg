<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="POUR i ALLANT_DE n-p+1 A n" texte="Exercice 10 : Écrire un algorithme qui permette de connaître ses chances de gagner au tiercé, quarté, quinté et autres impôts volontaires. CAS 2"/>
    <extension extnom="inactif"/>
    <fonction fctcode="ALGOBOX_MINIMUM(,,)" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8" arrondiAuto="faux" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="p EST_DU_TYPE NOMBRE" code="1#NOMBRE#p"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
        <item algoitem="y EST_DU_TYPE NOMBRE" code="1#NOMBRE#y"/>
        <item algoitem="p_facto EST_DU_TYPE NOMBRE" code="1#NOMBRE#p_facto"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez le nombre de chevaux partants&quot;" code="4#Entrez le nombre de chevaux partants#1"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez le nombre de chevaux joués&quot;" code="4#Entrez le nombre de chevaux joués#1"/>
        <item algoitem="LIRE p" code="2#p#pasliste"/>
        <item algoitem="x PREND_LA_VALEUR 1" code="5#x#1#pasliste"/>
        <item algoitem="p_facto PREND_LA_VALEUR 1" code="5#p_facto#1#pasliste"/>
        <item algoitem="POUR i ALLANT_DE n-p+1 A n" code="12#i#n-p+1#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="x PREND_LA_VALEUR x*i" code="5#x#x*i#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 1 A p" code="12#i#1#p">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="p_facto PREND_LA_VALEUR p_facto*i" code="5#p_facto#p_facto*i#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="y PREND_LA_VALEUR x/p_facto" code="5#y#x/p_facto#pasliste"/>
        <item algoitem="AFFICHER &quot;Dans l’ordre : 1 chance sur &quot;" code="4#Dans l’ordre : 1 chance sur #0"/>
        <item algoitem="AFFICHER x" code="3#x#0#pasliste"/>
        <item algoitem="AFFICHER &quot; de gagner.&quot;" code="4# de gagner.#1"/>
        <item algoitem="AFFICHER &quot;Dans le désordre : 1 chance sur &quot;" code="4#Dans le désordre : 1 chance sur #0"/>
        <item algoitem="AFFICHER y" code="3#y#0#pasliste"/>
        <item algoitem="AFFICHER &quot; de gagner.&quot;" code="4# de gagner.#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
