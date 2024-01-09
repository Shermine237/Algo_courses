<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 16 : Cryptographie 2 - le chiffre de César" courant="SI (position > 9) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" totalBoucles="5000000" nbDecimales="8" totalAffichages="1000" maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#alphabet" algoitem="alphabet EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#alphabet_maj" algoitem="alphabet_maj EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#phrase" algoitem="phrase EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#phrase_cryptee" algoitem="phrase_cryptee EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#chiffres" algoitem="chiffres EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#k" algoitem="k EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#decalage" algoitem="decalage EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#position" algoitem="position EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#alphabet#&quot;abcdefghijklmnopqrstuvwxyz&quot;#pasliste" algoitem="alphabet PREND_LA_VALEUR &quot;abcdefghijklmnopqrstuvwxyz&quot;"/>
        <item code="5#alphabet_maj#&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;#pasliste" algoitem="alphabet_maj PREND_LA_VALEUR &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;"/>
        <item code="5#chiffres#&quot;0123456789&quot;#pasliste" algoitem="chiffres PREND_LA_VALEUR &quot;0123456789&quot;"/>
        <item code="4#Entrez votre phrase :#1" algoitem="AFFICHER &quot;Entrez votre phrase :&quot;"/>
        <item code="2#phrase#pasliste" algoitem="LIRE phrase"/>
        <item code="4#Entrez le decalage :#1" algoitem="AFFICHER &quot;Entrez le decalage :&quot;"/>
        <item code="2#decalage#pasliste" algoitem="LIRE decalage"/>
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
                                                    <item code="5#position#j + decalage#pasliste" algoitem="position PREND_LA_VALEUR j + decalage"/>
                                                    <item code="6#position > 25" algoitem="SI (position > 25) ALORS">
                                                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                                        <item code="5#position#position -26#pasliste" algoitem="position PREND_LA_VALEUR position -26"/>
                                                        <item code="8#finsi" algoitem="FIN_SI"/>
                                                    </item>
                                                    <item code="5#phrase_cryptee#phrase_cryptee + alphabet.substr(position, 1)#pasliste" algoitem="phrase_cryptee PREND_LA_VALEUR phrase_cryptee + alphabet.substr(position, 1)"/>
                                                    <item code="8#finsi" algoitem="FIN_SI"/>
                                                    <item code="9#sinon" algoitem="SINON">
                                                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                                        <item code="6#phrase.substr(i, 1) == alphabet_maj.substr(j, 1)" algoitem="SI (phrase.substr(i, 1) == alphabet_maj.substr(j, 1)) ALORS">
                                                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                                            <item code="5#position#j + decalage#pasliste" algoitem="position PREND_LA_VALEUR j + decalage"/>
                                                            <item code="6#position > 25" algoitem="SI (position > 25) ALORS">
                                                                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                                                <item code="5#position#position -26#pasliste" algoitem="position PREND_LA_VALEUR position -26"/>
                                                                <item code="8#finsi" algoitem="FIN_SI"/>
                                                            </item>
                                                            <item code="5#phrase_cryptee#phrase_cryptee + alphabet_maj.substr(position, 1)#pasliste" algoitem="phrase_cryptee PREND_LA_VALEUR phrase_cryptee + alphabet_maj.substr(position, 1)"/>
                                                            <item code="8#finsi" algoitem="FIN_SI"/>
                                                        </item>
                                                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                                                    </item>
                                                </item>
                                                <item code="14#finpour" algoitem="FIN_POUR"/>
                                            </item>
                                            <item code="12#k#0#chiffres.length -1" algoitem="POUR k ALLANT_DE 0 A chiffres.length -1">
                                                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                                                <item code="6#phrase.substr(i, 1) == chiffres.substr(k, 1)" algoitem="SI (phrase.substr(i, 1) == chiffres.substr(k, 1)) ALORS">
                                                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                                    <item code="5#position#k + decalage#pasliste" algoitem="position PREND_LA_VALEUR k + decalage"/>
                                                    <item code="6#position > 9" algoitem="SI (position > 9) ALORS">
                                                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                                        <item code="5#position#position -10#pasliste" algoitem="position PREND_LA_VALEUR position -10"/>
                                                        <item code="8#finsi" algoitem="FIN_SI"/>
                                                    </item>
                                                    <item code="5#phrase_cryptee#phrase_cryptee + chiffres.substr(position, 1)#pasliste" algoitem="phrase_cryptee PREND_LA_VALEUR phrase_cryptee + chiffres.substr(position, 1)"/>
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
