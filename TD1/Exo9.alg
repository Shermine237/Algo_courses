<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 9 : Lire la suite des prix (en euros entiers et terminée par zéro) des achats d’un client. Calculer la somme qu’il doit, lire la somme qu’il paye, et simuler la remise de la monnaie en affichant les textes &quot;10 Euros&quot;, &quot;5 Euros&quot; et &quot;1 Euro&quot; autant de fois qu’il y a de coupures de chaque sorte à rendre." courant="AFFICHER &quot;x 10 Euros &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="ALGOBOX_MINIMUM(,,)" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000" maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
        <item algoitem="liste_prix EST_DU_TYPE LISTE" code="1#LISTE#liste_prix"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme"/>
        <item algoitem="somme_payee EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme_payee"/>
        <item algoitem="difference EST_DU_TYPE NOMBRE" code="1#NOMBRE#difference"/>
        <item algoitem="nb_10 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb_10"/>
        <item algoitem="nb_5 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb_5"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="nb PREND_LA_VALEUR 1" code="5#nb#1#pasliste"/>
        <item algoitem="TANT_QUE (nb!=0) FAIRE" code="15#nb!=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrez le prix (0 pour terminer)&quot;" code="4#Entrez le prix (0 pour terminer)#1"/>
            <item algoitem="LIRE nb" code="2#nb#pasliste"/>
            <item algoitem="liste_prix[i] PREND_LA_VALEUR nb" code="5#liste_prix#nb#i"/>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="somme PREND_LA_VALEUR somme+nb" code="5#somme#somme+nb#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;La somme : &quot;" code="4#La somme : #0"/>
        <item algoitem="AFFICHER somme" code="3#somme#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Euros&quot;" code="4# Euros#1"/>
        <item algoitem="AFFICHER &quot;Somme payee : &quot;" code="4#Somme payee : #0"/>
        <item algoitem="LIRE somme_payee" code="2#somme_payee#pasliste"/>
        <item algoitem="difference PREND_LA_VALEUR somme_payee-somme" code="5#difference#somme_payee-somme#pasliste"/>
        <item algoitem="TANT_QUE (difference>10) FAIRE" code="15#difference>10">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="nb_10 PREND_LA_VALEUR nb_10+1" code="5#nb_10#nb_10+1#pasliste"/>
            <item algoitem="difference PREND_LA_VALEUR difference-10" code="5#difference#difference-10#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="TANT_QUE (difference>5) FAIRE" code="15#difference>5">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="nb_5 PREND_LA_VALEUR nb_5+1" code="5#nb_5#nb_5+1#pasliste"/>
            <item algoitem="difference PREND_LA_VALEUR difference-5" code="5#difference#difference-5#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Monnaie : &quot;" code="4#Monnaie : #0"/>
        <item algoitem="SI (nb_10>0) ALORS" code="6#nb_10>0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER nb_10" code="3#nb_10#0#pasliste"/>
            <item algoitem="AFFICHER &quot;x 10 Euros &quot;" code="4#x 10 Euros #0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (nb_5>0) ALORS" code="6#nb_5>0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER nb_5" code="3#nb_5#0#pasliste"/>
            <item algoitem="AFFICHER &quot;x 5 Euros &quot;" code="4#x 5 Euros #0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER difference" code="3#difference#0#pasliste"/>
        <item algoitem="AFFICHER &quot;x 1 Euro&quot;" code="4#x 1 Euro#1"/>
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
