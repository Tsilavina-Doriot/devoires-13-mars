<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="POUR i ALLANT_DE 1 A n" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="8" arrondiAuto="faux"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#sommes" algoitem="sommes EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyennes" algoitem="moyennes EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#e" algoitem="e EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#chiffres" algoitem="chiffres EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#max" algoitem="max EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#min" algoitem="min EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Pmax" algoitem="Pmax EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Pmin" algoitem="Pmin EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#temp" algoitem="temp EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="5#sommes#0#pasliste" algoitem="sommes PREND_LA_VALEUR 0"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#chiffres#pasliste" algoitem="LIRE chiffres"/>
            <item code="5#e#chiffres#i" algoitem="e[i] PREND_LA_VALEUR chiffres"/>
            <item code="5#sommes#sommes+chiffres#pasliste" algoitem="sommes PREND_LA_VALEUR sommes+chiffres"/>
            <item code="19#début de max et min" algoitem="//début de max et min"/>
            <item code="6#i==1" algoitem="SI (i==1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="19#au début on affècte les valeurs et positions initiales" algoitem="//au début on affècte les valeurs et positions initiales"/>
                <item code="5#max#chiffres#pasliste" algoitem="max PREND_LA_VALEUR chiffres"/>
                <item code="5#min#chiffres#pasliste" algoitem="min PREND_LA_VALEUR chiffres"/>
                <item code="5#Pmax#1#pasliste" algoitem="Pmax PREND_LA_VALEUR 1"/>
                <item code="5#Pmin#1#pasliste" algoitem="Pmin PREND_LA_VALEUR 1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="6#chiffres>max" algoitem="SI (chiffres>max) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#max#chiffres#pasliste" algoitem="max PREND_LA_VALEUR chiffres"/>
                        <item code="5#Pmax#i#pasliste" algoitem="Pmax PREND_LA_VALEUR i"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                    </item>
                    <item code="6#chiffres&lt;min" algoitem="SI (chiffres&lt;min) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#min#chiffres#pasliste" algoitem="min PREND_LA_VALEUR chiffres"/>
                        <item code="5#Pmin#i#pasliste" algoitem="Pmin PREND_LA_VALEUR i"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                    </item>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="12#j#1#n" algoitem="POUR j ALLANT_DE 1 A n">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="6#e[i]&lt;e[j]" algoitem="SI (e[i]&lt;e[j]) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#temp#e[i]#pasliste" algoitem="temp PREND_LA_VALEUR e[i]"/>
                    <item code="5#e#e[j]#i" algoitem="e[i] PREND_LA_VALEUR e[j]"/>
                    <item code="5#e#temp#j" algoitem="e[j] PREND_LA_VALEUR temp"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#moyennes#sommes/n#pasliste" algoitem="moyennes PREND_LA_VALEUR sommes/n"/>
        <item code="4#sommes = #0" algoitem="AFFICHER &quot;sommes = &quot;"/>
        <item code="3#sommes#1#pasliste" algoitem="AFFICHER sommes"/>
        <item code="4# moyennes = #0" algoitem="AFFICHER &quot; moyennes = &quot;"/>
        <item code="3#moyennes#1#pasliste" algoitem="AFFICHER moyennes"/>
        <item code="4#maximum = #0" algoitem="AFFICHER &quot;maximum = &quot;"/>
        <item code="3#max#1#pasliste" algoitem="AFFICHER max"/>
        <item code="4#position = #0" algoitem="AFFICHER &quot;position = &quot;"/>
        <item code="3#Pmax#1#pasliste" algoitem="AFFICHER Pmax"/>
        <item code="4#minimum = #0" algoitem="AFFICHER &quot;minimum = &quot;"/>
        <item code="3#min#1#pasliste" algoitem="AFFICHER min"/>
        <item code="4#positions = #0" algoitem="AFFICHER &quot;positions = &quot;"/>
        <item code="3#Pmin#1#pasliste" algoitem="AFFICHER Pmin"/>
        <item code="4#valeurs en croissant = #1" algoitem="AFFICHER &quot;valeurs en croissant = &quot;"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#e#1#i" algoitem="AFFICHER e[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4# les valeurs en ordre décroissant :#1" algoitem="AFFICHER &quot; les valeurs en ordre décroissant :&quot;"/>
        <item code="12#i#n#1" algoitem="POUR i ALLANT_DE n A 1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#e#1#i" algoitem="AFFICHER e[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
