<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 14 : Ecrivez un algorithme qui demande une phrase à l’utilisateur. Celui-ci entrera ensuite le rang d’un caractère à supprimer, et la nouvelle phrase doit être affichée&#xa;&#xa;c.substr(2, 5) (Joindre les 2 parties: gauche et droite du delete caracter)" courant="position PREND_LA_VALEUR position -1"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="phrase EST_DU_TYPE CHAINE" code="1#CHAINE#phrase"/>
        <item algoitem="position EST_DU_TYPE NOMBRE" code="1#NOMBRE#position"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez une phrase&quot;" code="4#Entrez une phrase#1"/>
        <item algoitem="LIRE phrase" code="2#phrase#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez la position du caractere a supprimer&quot;" code="4#Entrez la position du caractere a supprimer#1"/>
        <item algoitem="LIRE position" code="2#position#pasliste"/>
        <item algoitem="position PREND_LA_VALEUR position -1" code="5#position#position -1#pasliste"/>
        <item algoitem="phrase PREND_LA_VALEUR phrase.substr(0, position) + phrase.substr(position +1, phrase.lenght)" code="5#phrase#phrase.substr(0, position) + phrase.substr(position +1, phrase.lenght)#pasliste"/>
        <item algoitem="AFFICHER &quot;La nouvelle phrase est : &quot;" code="4#La nouvelle phrase est : #1"/>
        <item algoitem="AFFICHER phrase" code="3#phrase#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
