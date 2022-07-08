#!/bin/bash
source "sPdftoppm.sh"
# это цвет текста списка перед курсором при значении 0 в переменной  UNMARK(){ $e "\e[0m";}
 UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[1;37m";}
#
 HEAD()
{
 for (( a=2; a<=38; a++ ))
  do
   TPUT $a 1
        $E "\e[2m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m";
  done
              TPUT  1 1;$E "\e[0m\e[2m┌────────────────────────────────────────────────────────────────────────────────┐\e[0m";
              TPUT  2 3;$E "\e[36mOпции                                                                Options\e[0m";
              TPUT  3 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT 35 1;$E "\e[2m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
              TPUT 36 3;$E "\033[2mUp \xE2\x86\x91 \xE2\x86\x93 Down Select Enter\e[0m";
}
 FOOT(){ MARK;TPUT 39 1;$E "\033[0m\033[2m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";UNMARK;}
#
  M0(){ TPUT  4 3; $e "Определяет координату y верхнего левого угла области обрезки      \e[32m -y number \e[0m";}
  M1(){ TPUT  5 3; $e "Определяет ширину области обрезки в пикселях (по умолчанию 0)     \e[32m -W number \e[0m";}
  M2(){ TPUT  6 3; $e "Определяет высоту области обрезки в пикселях (по умолчанию 0)     \e[32m -H number \e[0m";}
  M3(){ TPUT  7 3; $e "Определяет размер кадрируемого квадрата в пикселях               \e[32m -sz number \e[0m";}
  M4(){ TPUT  8 3; $e "Использует поле обрезки, а не поле мультимедиа при создании файлов \e[32m -cropbox \e[0m";}
  M5(){ TPUT  9 3; $e "Не показывать аннотации                                   \e[32m -hide-annotations \e[0m";}
  M6(){ TPUT 10 3; $e "Создайте монохромный файл PBM (вместо цветного файла PPM)             \e[32m -mono \e[0m";}
  M7(){ TPUT 11 3; $e "Создайте файл PGM в оттенках серого (вместо цветного файла PPM)       \e[32m -gray \e[0m";}
  M8(){ TPUT 12 3; $e "устанавливает профиль дисплея на ICC     \e[32m -displayprofile displayprofilefile \e[0m";}
  M9(){ TPUT 13 3; $e "цветовое пространство DefaultGray\e[32m -defaultgrayprofile defaultgrayprofilefile \e[0m";}
 M10(){ TPUT 14 3; $e "цветовое пространство DefaultRGB   \e[32m -defaultrgbprofile defaultrgbprofilefile \e[0m";}
 M11(){ TPUT 15 3; $e "цветовое пространство DefaultCMYK\e[32m -defaultcmykprofile defaultcmykprofilefile \e[0m";}
 M12(){ TPUT 16 3; $e "Создает файл PNG вместо файла PPM                                      \e[32m -png \e[0m";}
 M13(){ TPUT 17 3; $e "Generates a JPEG file instead a PPM file                              \e[32m -jpeg \e[0m";}
 M14(){ TPUT 18 3; $e "принимает список опций для управления сжатием jpeg    \e[32m -jpegopt jpeg-options \e[0m";}
 M15(){ TPUT 19 3; $e "Generates a TIFF file instead a PPM file                              \e[32m -tiff \e[0m";}
 M16(){ TPUT 20 3; $e "Указывает тип сжатия TIFF                                  \e[32m -tiffcompression \e[0m";}
 M17(){ TPUT 21 3; $e "Включить или отключить FreeType                          \e[32m -freetype yes | no \e[0m";}
 M18(){ TPUT 22 3; $e "Определяет режим тонкой линии            \e[32m -thinlinemode none | solid | shape \e[0m";}
 M19(){ TPUT 23 3; $e "подгоните линии шириной менее одного пикселя к границе пикселя     \e[32m \"solid\": \e[0m";}
 M20(){ TPUT 24 3; $e "настройте линии шириной менее одного пикселя до границы пикселя    \e[32m \"shape\": \e[0m";}
 M21(){ TPUT 25 3; $e "Включить или отключить сглаживание шрифтов. По умолчанию это yes \e[32m -aa yes|no \e[0m";}
 M22(){ TPUT 26 3; $e "Включить или отключить векторное сглаживание             \e[32m -aaVector yes | no \e[0m";}
 M23(){ TPUT 27 3; $e "Укажите пароль владельца для файла PDF                        \e[32m -opw password \e[0m";}
 M24(){ TPUT 28 3; $e "Укажите пароль пользователя для файла PDF                     \e[32m -upw password \e[0m";}
 M25(){ TPUT 29 3; $e "Не печатать никаких сообщений или ошибок                                 \e[32m -q \e[0m";}
 M26(){ TPUT 30 3; $e "Распечатывать информацию о ходе выполнения по мере создания       \e[32m -progress \e[0m";}
 M27(){ TPUT 31 3; $e "Укажите односимвольный разделитель между именем и номером страницы\e[32m -sep char \e[0m";}
 M28(){ TPUT 32 3; $e "Принудительный номер страницы, даже если есть одна страница       \e[32m -forcenum \e[0m";}
 M29(){ TPUT 33 3; $e "Print copyright and version information                                  \e[32m -v \e[0m";}
 M30(){ TPUT 34 3; $e "Print usage information                                                  \e[32m -h \e[0m";}
#
 M31(){ TPUT 37 3; $e "Exit                                                                         ";}
LM=31
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ R;HEAD;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
# Функция возвращения в меню
     ES(){ MARK;$e " ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
  0) S=M0;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "
 Определяет размер кадрируемого квадрата в пикселях (устанавливает W и H)
";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m
 pdftoppm -gray file.pdf file_name
\e[0m";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
 Если poppler скомпилирован с поддержкой управления цветом,
 эта опция устанавливает профиль дисплея на профиль ICC,
 хранящийся в файле displayprofilefile.
";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "
 Если poppler скомпилирован с поддержкой управления цветом,
 эта опция устанавливает цветовое пространство DefaultGray в профиль ICC,
 хранящийся в файле defaultgrayprofilefile.
";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "
 Если poppler скомпилирован с поддержкой управления цветом,
 эта опция устанавливает цветовое пространство DefaultRGB в профиль ICC,
 хранящийся в defaultrgbprofilefile.
";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "
 Если poppler скомпилирован с поддержкой управления цветом,
 этот параметр устанавливает цветовое пространство DefaultCMYK в профиль ICC,
 хранящийся в defaultcmykprofilefile.
";ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m pdftoppm -png file.pdf file_name\e[0m
";ES;fi;;
 13) S=M13;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m pdftoppm -jpeg file.pdf file_name\e[0m
";ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;echo -e "
 При использовании с -jpeg принимает список опций для управления сжатием jpeg.
 Доступные параметры см. в разделе ОПЦИИ JPEG.
";ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;echo -e "
\e[32m pdftoppm -tiff file.pdf file_name\e[0m
";ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;echo -e "
 Указывает тип сжатия TIFF. По умолчанию это none:
\e[32m -tiffcompression none    \e[0m ничего
\e[32m                  packbits\e[0m биты
\e[32m                  jpeg    \e[0m в формате jpeg
\e[32m                  lzw     \e[0m lzw
\e[32m                  deflate \e[0m сдувать
";ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;echo -e "
 Включить или отключить FreeType (растеризатор шрифтов TrueType / Type 1).
 По умолчанию это «да».
";ES;fi;;
 18) S=M18;SC;if [[ $cur == enter ]];then R;echo -e "
 Определяет режим тонкой линии. По умолчанию это\e[32m none\e[0m ничего.
";ES;fi;;
 19) S=M19;SC;if [[ $cur == enter ]];then R;echo -e "
 подгоните линии шириной менее одного пикселя к границе пикселя
 и закрасьте ее шириной в один пиксель.
";ES;fi;;
 20) S=M20;SC;if [[ $cur == enter ]];then R;echo -e "
 настройте линии шириной менее одного пикселя до границы пикселя и закрасьте их
 шириной в один пиксель, но с формой, пропорциональной его ширине.
";ES;fi;;
 21) S=M21;SC;if [[ $cur == enter ]];then R;echo -e "

";ES;fi;;
 22) S=M22;SC;if [[ $cur == enter ]];then R;echo -e "
 Включить или отключить векторное сглаживание. По умолчанию это «да».
";ES;fi;;
 23) S=M23;SC;if [[ $cur == enter ]];then R;echo -e "
 Укажите пароль владельца для файла PDF.
 Это позволит обойти все ограничения безопасности.
";ES;fi;;
 24) S=M24;SC;if [[ $cur == enter ]];then R;echo -e "

";ES;fi;;
 25) S=M25;SC;if [[ $cur == enter ]];then R;echo -e "

";ES;fi;;
 26) S=M26;SC;if [[ $cur == enter ]];then R;echo -e "
 Распечатывать информацию о ходе выполнения по мере создания каждой страницы.
";ES;fi;;
 27) S=M27;SC;if [[ $cur == enter ]];then R;echo -e "
 Укажите односимвольный разделитель между именем и номером страницы, default
";ES;fi;;
 28) S=M28;SC;if [[ $cur == enter ]];then R;echo -e "

";ES;fi;;
 29) S=M29;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m
  pdftoppm -v
\e[0m";ES;fi;;
 30) S=M30;SC;if [[ $cur == enter ]];then R;echo -e "
 Print usage information.  (-help and --help are equivalent.):
\e[32m pdftoppm -h\e[0m
#
\e[32m pdftoppm -help\e[0m
#
\e[32m pdftoppm --help\e[0m
";ES;fi;;
#
 31) S=M31;SC;if [[ $cur == enter ]];then R;exit 0;fi;;
 esac;POS;done
