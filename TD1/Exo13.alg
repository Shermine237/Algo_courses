<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 13 : Un magasin de reprographie facture 10 F les dix premières photocopies, 9 F les vingt suivantes et 8 F audelà. Ecrivez un algorithme qui demande à l’utilisateur le nombre de photocopies effectuées et qui affiche la facture correspondante." courant="montant PREND_LA_VALEUR 10*prix_10+20*prix_20+(nb_copy-30)*prix_plus"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode="ALGOBOX_MINIMUM(,,)"/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" totalAffichages="1000" arrondiAuto="faux" maxBoucle="500000" epaisseurPoint="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb_copy EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb_copy"/>
        <item algoitem="montant EST_DU_TYPE NOMBRE" code="1#NOMBRE#montant"/>
        <item algoitem="prix_10 EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_10"/>
        <item algoitem="prix_20 EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_20"/>
        <item algoitem="prix_plus EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_plus"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="prix_10 PREND_LA_VALEUR 10" code="5#prix_10#10#pasliste"/>
        <item algoitem="prix_20 PREND_LA_VALEUR 9" code="5#prix_20#9#pasliste"/>
        <item algoitem="prix_plus PREND_LA_VALEUR 8" code="5#prix_plus#8#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez le nombre de photocopies&quot;" code="4#Entrez le nombre de photocopies#1"/>
        <item algoitem="LIRE nb_copy" code="2#nb_copy#pasliste"/>
        <item algoitem="SI (nb_copy&lt;=10) ALORS" code="6#nb_copy&lt;=10">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="montant PREND_LA_VALEUR nb_copy*prix_10" code="5#montant#nb_copy*prix_10#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (nb_copy>10 ET nb_copy&lt;=30) ALORS" code="6#nb_copy>10 ET nb_copy&lt;=30">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="montant PREND_LA_VALEUR 10*prix_10+(nb_copy-10)*prix_20" code="5#montant#10*prix_10+(nb_copy-10)*prix_20#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="SI (nb_copy>30) ALORS" code="6#nb_copy>30">
                            <item algoitem="DEBUT_SI" code="7#debutsi"/>
                            <item algoitem="montant PREND_LA_VALEUR 10*prix_10+20*prix_20+(nb_copy-30)*prix_plus" code="5#montant#10*prix_10+20*prix_20+(nb_copy-30)*prix_plus#pasliste"/>
                            <item algoitem="FIN_SI" code="8#finsi"/>
                        </item>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="AFFICHER &quot;Montant total : &quot;" code="4#Montant total : #0"/>
        <item algoitem="AFFICHER montant" code="3#montant#0#pasliste"/>
        <item algoitem="AFFICHER &quot; F&quot;" code="4# F#1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
