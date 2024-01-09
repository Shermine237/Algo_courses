<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="" texte="Exercice 10 : Ecrivez l'algorithme qui recherche un mot saisi au clavier dans un dictionnaire. Le dictionnaire est supposé être codé dans un tableau préalablement rempli et trié."/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="index EST_DU_TYPE NOMBRE" code="1#NOMBRE#index"/>
        <item algoitem="mot EST_DU_TYPE CHAINE" code="1#CHAINE#mot"/>
        <item algoitem="dict EST_DU_TYPE LISTE" code="1#LISTE#dict"/>
        <item algoitem="mots EST_DU_TYPE CHAINE" code="1#CHAINE#mots"/>
        <item algoitem="tmp1 EST_DU_TYPE CHAINE" code="1#CHAINE#tmp1"/>
        <item algoitem="tmp2 EST_DU_TYPE CHAINE" code="1#CHAINE#tmp2"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez la taille du dictionnaire&quot;" code="4#Entrez la taille du dictionnaire#1"/>
        <item algoitem="LIRE nb" code="2#nb#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A nb -1" code="12#i#0#nb -1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Ajoutez un mot au dictionnaire&quot;" code="4#Ajoutez un mot au dictionnaire#1"/>
            <item algoitem="LIRE mot" code="2#mot#pasliste"/>
            <item algoitem="dict[i] PREND_LA_VALEUR i" code="5#dict#i#i"/>
            <item algoitem="mots PREND_LA_VALEUR mots + mot" code="5#mots#mots + mot#pasliste"/>
            <item algoitem="mots PREND_LA_VALEUR mots + &quot;|&quot;" code="5#mots#mots + &quot;|&quot;#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="//// Affichons la liste des mots" code="19#// Affichons la liste des mots"/>
        <item algoitem="AFFICHER mots" code="3#mots#1#pasliste"/>
        <item algoitem="//Trie du dictionaire ..." code="19#Trie du dictionaire ..."/>
        <item algoitem="POUR i ALLANT_DE 0 A mots.length" code="12#i#0#mots.length">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="TANT_QUE (mots.substr(i, 1) != &quot;|&quot;) FAIRE" code="15#mots.substr(i, 1) != &quot;|&quot;">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="" code=""/>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
