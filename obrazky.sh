
#!/bin/bash
volba=0
until [ $volba = 5 ]; do
volba=0
clear 
	echo "||||||||||||||||||||||MENU|||||||||||||||||||||||"
	echo "|(1) konverze obrazku na jiny format	      |"
	echo "|(2) zmena kvality obrazku na libovolnou hodnotu|"
	echo "|(3) zmena rozmeru obrazku na libovolny rozmer  |"
	echo "|(4) otoceni obrazku o libovolny uhel           |"
	echo "|(5) efekt charcoal                             |"
	echo "|(6) efekt implode                              |"
	echo "|||||||||||||||||||||||||||||||||||||||||||||||||"
read volba

# Volby

clear
case $volba in
1) echo "<M E N U - Konvertovat>"
   echo " (1) PNG -> JPG"
   echo " (2) JPG -> PNG"
   echo " (5) zpět"
   read volba
   clear
   case $volba in
	1) echo "PNG -> JPG |  Název souboru (bez přípony): "
	   read soubor
	   echo "Kvalita (1 až 100): "
	   read kvalita
		convert $soubor.png -quality $kvalita $soubor.jpg
		convert $soubor.PNG -quality $kvality $soubor.JPG
	;;
	2) echo "JPG -> PNG |  Název souboru (bez přípony): "
	   read soubor
	   echo "Kvalita (1 až 100): "
	   read kvalita
		convert $soubor.jpg -quality $kvalita $soubor.png
		convert $soubor.JPG -quality $kvalita $soubor.PNG
	;;
	*) echo "špatná volba!"
	;;
   esac
;;
2) echo " Zadej šířku: "
   read sirka
   echo " Zadejte výšku: "
   read vyska
   echo " Zadej název souboru (s příponou)"
   read soubor
   clear
   	convert $soubor -resize $sirka"x"$vyska"!" "resized_"$soubor
;;
3) echo " O kolik stupňů chceš obrázek otočit: "
   read stupne
   echo " Název souboru (s příponou)"
   read soubor
   clear
   	convert $soubor -rotate $stupne "rotated_"$soubor
;;
4) echo "<M E N U - Efects>"
   echo " (1) Efekt charcoal"
   echo " (2) Efekt implode"
   echo " (5) zpět"
   read volba
   clear
   case $volba in
	1) echo "Efekt Charcoal |  Chcete efekt aplikovat na celý adresář (1), nebo na jeden soubor (2)?"
	   read volba
	   case $volba in
		1) echo "Zadejte tloušťku: "
		   read tloustka
			convert * -charcoal $tloustka "charcoal_"*
		;;

		2) echo "Efekt Charcoal |  Název souboru (s příponou): "
		   read soubor
		   echo " Tloušťka: "
		   read tloustka
		   	convert $soubor -charcoal $tloustka "charcoal_"$soubor
		;;
		*) echo "špatná volba!"
		;;
	    esac
	   1) echo "Efekt Charcoal |  Chcete efekt aplikovat na celý adresář (1), nebo na určitý soubor (2)?"
	   read volba
 		case $volba in
		   1) echo "Zadejte sílu: "
		   read sila
			convert * -implode $sila "implode_"*
		   ;;
		   2) echo "Efekt Implode |  Název souboru (s příponou): "
		      read soubor
		      echo " Síla: "
		      read sila
		   	   convert $soubor -implode $sila "implode_"$soubor
		   ;;
		   *) echo "špatná volba!"
		   ;;
		esac
	
	;;
	5) clear
	;;
	*) "špatná volba!"
	;;
   esac
;;
5) clear
;;
*) echo "špatná volba!";;
esac

done			
	
	
