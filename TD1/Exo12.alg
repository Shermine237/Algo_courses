<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 12 : Cet algorithme est destiné à prédire l'avenir, et il doit être infaillible ! Il lira au clavier l’heure et les minutes, et il affichera l’heure qu’il sera une minute plus tard." courant="next_min PREND_LA_VALEUR next_min-60"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode="ALGOBOX_MINIMUM(,,)"/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" arrondiAuto="faux" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#heure" algoitem="heure EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#minute" algoitem="minute EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#next_min" algoitem="next_min EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez l’heure#1" algoitem="AFFICHER &quot;Entrez l’heure&quot;"/>
        <item code="2#heure#pasliste" algoitem="LIRE heure"/>
        <item code="4#Entrez les minutes#1" algoitem="AFFICHER &quot;Entrez les minutes&quot;"/>
        <item code="2#minute#pasliste" algoitem="LIRE minute"/>
        <item code="5#next_min#minute+1#pasliste" algoitem="next_min PREND_LA_VALEUR minute+1"/>
        <item code="6#next_min>=60" algoitem="SI (next_min>=60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#next_min#next_min-60#pasliste" algoitem="next_min PREND_LA_VALEUR next_min-60"/>
            <item code="5#heure#heure+1#pasliste" algoitem="heure PREND_LA_VALEUR heure+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="4#Dans une minute, il sera #0" algoitem="AFFICHER &quot;Dans une minute, il sera &quot;"/>
        <item code="3#heure#0#pasliste" algoitem="AFFICHER heure"/>
        <item code="4# heure(s) #0" algoitem="AFFICHER &quot; heure(s) &quot;"/>
        <item code="3#next_min#0#pasliste" algoitem="AFFICHER next_min"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
