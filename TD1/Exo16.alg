<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 16 : Ecrire l'algorithme permettant de saisir les données nécessaires (sans contrôle de saisie) et de traiter ce problème." courant="AFFICHER &quot; Bleu&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="ALGOBOX_MINIMUM(,,)" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="faux" totalBoucles="5000000" totalAffichages="1000" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#duree_permis" algoitem="duree_permis EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nb_accidents" algoitem="nb_accidents EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#fidelite" algoitem="fidelite EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#point" algoitem="point EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez l'age#1" algoitem="AFFICHER &quot;Entrez l'age&quot;"/>
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="4#Entrez la duree du permis#1" algoitem="AFFICHER &quot;Entrez la duree du permis&quot;"/>
        <item code="2#duree_permis#pasliste" algoitem="LIRE duree_permis"/>
        <item code="4#Entrez le nombre d'accidents#1" algoitem="AFFICHER &quot;Entrez le nombre d'accidents&quot;"/>
        <item code="2#nb_accidents#pasliste" algoitem="LIRE nb_accidents"/>
        <item code="4#Entrez la fidelite#1" algoitem="AFFICHER &quot;Entrez la fidelite&quot;"/>
        <item code="2#fidelite#pasliste" algoitem="LIRE fidelite"/>
        <item code="6#fidelite>5" algoitem="SI (fidelite>5) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#point#1#pasliste" algoitem="point PREND_LA_VALEUR 1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#(age&lt;25 ET duree_permis&lt;2 ET nb_accidents==0) OU (age&lt;25 ET duree_permis>2 ET nb_accidents==1) OU (age>25 ET duree_permis&lt;2 ET nb_accidents==1) OU (age>25 ET duree_permis>2 ET nb_accidents==2)" algoitem="SI ((age&lt;25 ET duree_permis&lt;2 ET nb_accidents==0) OU (age&lt;25 ET duree_permis>2 ET nb_accidents==1) OU (age>25 ET duree_permis&lt;2 ET nb_accidents==1) OU (age>25 ET duree_permis>2 ET nb_accidents==2)) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#point#point+1#pasliste" algoitem="point PREND_LA_VALEUR point+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#(age&lt;25 ET duree_permis>2 ET nb_accidents==0) OU (age>25 ET duree_permis&lt;2 ET nb_accidents==0) OU (age>25 ET duree_permis>2 ET nb_accidents==1)" algoitem="SI ((age&lt;25 ET duree_permis>2 ET nb_accidents==0) OU (age>25 ET duree_permis&lt;2 ET nb_accidents==0) OU (age>25 ET duree_permis>2 ET nb_accidents==1)) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#point#point+2#pasliste" algoitem="point PREND_LA_VALEUR point+2"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#age>25 ET duree_permis>2 ET nb_accidents==0" algoitem="SI (age>25 ET duree_permis>2 ET nb_accidents==0) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="5#point#point+3#pasliste" algoitem="point PREND_LA_VALEUR point+3"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="4#Refus#1" algoitem="AFFICHER &quot;Refus&quot;"/>
                                <item code="11#finsinon" algoitem="FIN_SINON"/>
                            </item>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="4#Le tarif est : #0" algoitem="AFFICHER &quot;Le tarif est : &quot;"/>
        <item code="6#point==1" algoitem="SI (point==1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4# Rouge#0" algoitem="AFFICHER &quot; Rouge&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#point==2" algoitem="SI (point==2) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4# Orange#0" algoitem="AFFICHER &quot; Orange&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#point==3" algoitem="SI (point==3) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4# Vert#0" algoitem="AFFICHER &quot; Vert&quot;"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="6#point==4" algoitem="SI (point==4) ALORS">
                                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                    <item code="4# Bleu#0" algoitem="AFFICHER &quot; Bleu&quot;"/>
                                    <item code="8#finsi" algoitem="FIN_SI"/>
                                </item>
                                <item code="11#finsinon" algoitem="FIN_SINON"/>
                            </item>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
