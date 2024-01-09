<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="LIRE alphabet_cle" texte="Exercice 17 : Cryptographie 3 "/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" nbDecimales="8" epaisseurLigne="2" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#alphabet" algoitem="alphabet EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#phrase" algoitem="phrase EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#phrase_cryptee" algoitem="phrase_cryptee EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#alphabet_cle" algoitem="alphabet_cle EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#alphabet#&quot;abcdefghijklmnopqrstuvwxyz&quot;#pasliste" algoitem="alphabet PREND_LA_VALEUR &quot;abcdefghijklmnopqrstuvwxyz&quot;"/>
        <item code="4#Entrez votre phrase :#1" algoitem="AFFICHER &quot;Entrez votre phrase :&quot;"/>
        <item code="2#phrase#pasliste" algoitem="LIRE phrase"/>
        <item code="4#Entrez l'alphabet cle#1" algoitem="AFFICHER &quot;Entrez l'alphabet cle&quot;"/>
        <item code="2#alphabet_cle#pasliste" algoitem="LIRE alphabet_cle"/>
        <item code="12#i#0#phrase.length -1" algoitem="POUR i ALLANT_DE 0 A phrase.length -1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#phrase.substr(i, 1) == &quot; &quot;" algoitem="SI (phrase.substr(i, 1) == &quot; &quot;) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#phrase_cryptee#phrase_cryptee + &quot; &quot;#pasliste" algoitem="phrase_cryptee PREND_LA_VALEUR phrase_cryptee + &quot; &quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="6#phrase.substr(i, 1) == &quot;'&quot;" algoitem="SI (phrase.substr(i, 1) == &quot;'&quot;) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#phrase_cryptee#phrase_cryptee + &quot;'&quot;#pasliste" algoitem="phrase_cryptee PREND_LA_VALEUR phrase_cryptee + &quot;'&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="6#phrase.substr(i, 1) == &quot;,&quot;" algoitem="SI (phrase.substr(i, 1) == &quot;,&quot;) ALORS">
                                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                <item code="5#phrase_cryptee#phrase_cryptee + &quot;,&quot;#pasliste" algoitem="phrase_cryptee PREND_LA_VALEUR phrase_cryptee + &quot;,&quot;"/>
                                <item code="8#finsi" algoitem="FIN_SI"/>
                                <item code="9#sinon" algoitem="SINON">
                                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                    <item code="6#phrase.substr(i, 1) == &quot;.&quot;" algoitem="SI (phrase.substr(i, 1) == &quot;.&quot;) ALORS">
                                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                        <item code="5#phrase_cryptee#phrase_cryptee + &quot;.&quot;#pasliste" algoitem="phrase_cryptee PREND_LA_VALEUR phrase_cryptee + &quot;.&quot;"/>
                                        <item code="8#finsi" algoitem="FIN_SI"/>
                                        <item code="9#sinon" algoitem="SINON">
                                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                            <item code="12#j#0#alphabet.length -1" algoitem="POUR j ALLANT_DE 0 A alphabet.length -1">
                                                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                                                <item code="6#phrase.substr(i, 1) == alphabet.substr(j, 1)" algoitem="SI (phrase.substr(i, 1) == alphabet.substr(j, 1)) ALORS">
                                                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                                    <item code="5#phrase_cryptee#phrase_cryptee + alphabet_cle.substr(j, 1)#pasliste" algoitem="phrase_cryptee PREND_LA_VALEUR phrase_cryptee + alphabet_cle.substr(j, 1)"/>
                                                    <item code="8#finsi" algoitem="FIN_SI"/>
                                                </item>
                                                <item code="14#finpour" algoitem="FIN_POUR"/>
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
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#La phrase cryptee est : #1" algoitem="AFFICHER &quot;La phrase cryptee est : &quot;"/>
        <item code="3#phrase_cryptee#0#pasliste" algoitem="AFFICHER phrase_cryptee"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
