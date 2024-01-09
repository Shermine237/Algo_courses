<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 20 : Ecrivez une fonction qui purge une chaîne d'un caractère, la chaîne comme le caractère étant passés en argument." courant="AFFICHER phrase_finale"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="FONCTION Purge(phrase_, caractere_)" code="201#Purge#phrase_, caractere_">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="phrase EST_DU_TYPE CHAINE" code="1#CHAINE#phrase"/>
                <item algoitem="caractere EST_DU_TYPE CHAINE" code="1#CHAINE#caractere"/>
                <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="phrase PREND_LA_VALEUR phrase_" code="5#phrase#phrase_#pasliste"/>
            <item algoitem="caractere PREND_LA_VALEUR caractere_" code="5#caractere#caractere_#pasliste"/>
            <item algoitem="POUR i ALLANT_DE 0 A phrase.length -1" code="12#i#0#phrase.length -1">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (phrase.substr(i, 1) != caractere) ALORS" code="6#phrase.substr(i, 1) != caractere">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="phrase_finale PREND_LA_VALEUR phrase_finale + phrase.substr(i, 1)" code="5#phrase_finale#phrase_finale + phrase.substr(i, 1)#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="RENVOYER phrase_finale" code="205#phrase_finale"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="phrase_saisie EST_DU_TYPE CHAINE" code="1#CHAINE#phrase_saisie"/>
        <item algoitem="caractere_saisie EST_DU_TYPE CHAINE" code="1#CHAINE#caractere_saisie"/>
        <item algoitem="phrase_finale EST_DU_TYPE CHAINE" code="1#CHAINE#phrase_finale"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez votre phrase : &quot;" code="4#Entrez votre phrase : #1"/>
        <item algoitem="LIRE phrase_saisie" code="2#phrase_saisie#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez le caractere a supprimer : &quot;" code="4#Entrez le caractere a supprimer : #1"/>
        <item algoitem="LIRE caractere_saisie" code="2#caractere_saisie#pasliste"/>
        <item algoitem="APPELER_FONCTION Purge(phrase_saisie, caractere_saisie)" code="206#Purge(phrase_saisie, caractere_saisie)"/>
        <item algoitem="AFFICHER &quot;La phrase finale est : &quot;" code="4#La phrase finale est : #1"/>
        <item algoitem="AFFICHER phrase_finale" code="3#phrase_finale#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
