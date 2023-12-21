<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 15 : Vous devez écrire un algorithme qui permette la saisie des scores de quatre candidats au premier tour. Cet algorithme traitera ensuite le candidat numéro 1 (et uniquement lui)" courant="SI (scores[1]>=12.5) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode="ALGOBOX_MINIMUM(,,)"/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" arrondiAuto="faux" epaisseurPoint="2" totalBoucles="5000000" epaisseurLigne="2" totalAffichages="1000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#scores" algoitem="scores EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#max" algoitem="max EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="12#i#1#4" algoitem="POUR i ALLANT_DE 1 A 4">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Entrez un score#1" algoitem="AFFICHER &quot;Entrez un score&quot;"/>
            <item code="2#scores#i" algoitem="LIRE scores[i]"/>
            <item code="6#scores[i]>max" algoitem="SI (scores[i]>max) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#max#scores[i]#pasliste" algoitem="max PREND_LA_VALEUR scores[i]"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="6#scores[1]>50" algoitem="SI (scores[1]>50) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Elu#1" algoitem="AFFICHER &quot;Elu&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#scores[1]>=12.5" algoitem="SI (scores[1]>=12.5) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="6#scores[1]==max" algoitem="SI (scores[1]==max) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="4#Favorable#1" algoitem="AFFICHER &quot;Favorable&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#Défavorable#1" algoitem="AFFICHER &quot;Défavorable&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="4#Battu#1" algoitem="AFFICHER &quot;Battu&quot;"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
