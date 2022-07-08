#!/bin/bash
 source "sPdftoppm.sh"
 UNMARK(){ $e "\e[0m";}
 MARK(){ $e "\e[30;47m";}
#
 HEAD()
{
 for (( a=2; a<=40; a++ ))
          do
              TPUT $a 1
                        $E "\e[47;30m│\e[0m                                                                                \e[47;30m│\e[0m";
          done
              TPUT  1 1;$E "\033[0m\033[47;30m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m"
              TPUT  3 3;$E "\e[1;36m*** pdftoppm ***\e[0m";
              TPUT  4 3;$E "\e[2mКонвертер Portable Document Format (PDF) в Portable Pixmap (PPM) (версия 3.03)\e[0m";
              TPUT  5 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 12 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 13 3;$E "\e[36m JPEG Oпции                                                     JPEG Options\e[0m";
              TPUT 14 3;$E "\e[2mКогда указан вывод JPEG, можно использовать параметр -jpegopt для управления\e[0m";
              TPUT 15 3;$E "\e[2mпараметрами сжатия JPEG, oн принимает вид: <opt>u003d<val>[,<opt>u003d<val>]\e[0m";
              TPUT 16 3;$E "\e[2mНа данный момент доступны следующие варианты:\e[0m";
              TPUT 20 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 21 3;$E "\e[36m Oпции                                                               Options\e[0m";
              TPUT 36 1;$E "\e[47;30m├\e[0m\e[1;30m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
              TPUT 38 1;$E "\e[47;30m├\e[0m\e[2m─ Up \xE2\x86\x91 \xE2\x86\x93 Down Select Enter ─────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
}
 FOOT(){ MARK;TPUT 41 1;$E "\033[0m\033[47;30m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";UNMARK;}
#
  M0(){ TPUT  6 3; $e " Установка                                                          \e[32m Install \e[0m";}
  M1(){ TPUT  7 3; $e " Kраткий обзор                                                     \e[32m Synopsis \e[0m";}
  M2(){ TPUT  8 3; $e " Описание                                                       \e[32m Description \e[0m";}
  M3(){ TPUT  9 3; $e " Смотрите также                                                    \e[32m See Also \e[0m";}
  M4(){ TPUT 10 3; $e " Авторы                                                             \e[32m Authors \e[0m";}
  M5(){ TPUT 11 3; $e " Коды выхода                                                     \e[32m Exit Codes \e[0m";}
#
  M6(){ TPUT 17 3; $e " Выбор значения качества JPEG                                       \e[32m quality \e[0m";}
  M7(){ TPUT 18 3; $e " Выберите прогрессивный вывод JPEG                              \e[32m progressive \e[0m";}
  M8(){ TPUT 19 3; $e " Вычислять ли оптимальные таблицы кодирования Хаффмана данных JPEG \e[32m optimize \e[0m";}
#
  M9(){ TPUT 22 3; $e " Указывает первую страницу для преобразования                     \e[32m -f number \e[0m";}
 M10(){ TPUT 23 3; $e " Указывает последнюю страницу для преобразования                  \e[32m -l number \e[0m";}
 M11(){ TPUT 24 3; $e " Генерирует только нечетные страницы                                     \e[32m -o \e[0m";}
 M12(){ TPUT 25 3; $e " Генерирует только четные страницы                                       \e[32m -e \e[0m";}
 M13(){ TPUT 26 3; $e " Пишет только первую страницу и не добавляет цифры              \e[32m -singlefile \e[0m";}
 M14(){ TPUT 27 3; $e " Определяет разрешение по осям X и Y в DPI                        \e[32m -r number \e[0m";}
 M15(){ TPUT 28 3; $e " Определяет разрешение X в DPI                                   \e[32m -rx number \e[0m";}
 M16(){ TPUT 29 3; $e " Определяет разрешение Y в DPI                                   \e[32m -ry number \e[0m";}
 M17(){ TPUT 30 3; $e " Масштабирует длинную сторону каждой страницы              \e[32m -scale-to number \e[0m";}
 M18(){ TPUT 31 3; $e " Масштабирует каждую страницу по горизонтали             \e[32m -scale-to-x number \e[0m";}
 M19(){ TPUT 32 3; $e " Масштабирует каждую страницу по вертикали               \e[32m -scale-to-y number \e[0m";}
 M20(){ TPUT 33 3; $e " Меняет горизонтальный/вертикальный размер \e[32m -scale-dimension-before-rotation \e[0m";}
 M21(){ TPUT 34 3; $e " Указывает x-координату верхнего левого угла области обрезки      \e[32m -x number \e[0m";}
 M22(){ TPUT 35 3; $e " Дальше                                                                \e[36m Next \e[0m";}
#
 M23(){ TPUT 37 3; $e " Grannik Git                                                                 ";}
#
 M24(){ TPUT 39 3; $e " Exit                                                                        ";}
LM=24
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
  0) S=M0;SC; if [[ $cur == enter ]];then R;echo -e "
 этот инструмент находится в пакете\e[32m poppler-utils\e[0m
 Установка:\e[32m sudo apt update; sudo apt install poppler-utils\e[0m
";ES;fi;;
  1) S=M1;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m
 pdftoppm [options] PDF-file PPM-root 
\e[0m";ES;fi;;
  2) S=M2;SC; if [[ $cur == enter ]];then R;echo -e "
\e[32m pdftoppm\e[0m преобразует файлы Portable Document Format (PDF) в файлы цветных изобра-
 жений в формате Portable Pixmap (PPM), файлы изображений в градациях серого в
 формате Portable Graymap (PGM) или файлы монохромных изображений в формате
 Portable Bitmap (PBM).
\e[32m Pdftoppm\e[0m читает PDF-файл, PDF-файл и записывает один файл PPM для каждой страницы,
 PPM-root-number.ppm, где число — это номер страницы.
 Если PDF-файл имеет значение «-», он читает PDF-файл со стандартного ввода.
";ES;fi;;
  3) S=M3;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m
 pdfdetach, pdffonts, pdfimages, pdfinfo, pdftocairo, pdftohtml, pdftops,
 pdftotext, pdfseparate, pdfsig, pdfunite
\e[0m";ES;fi;;
  4) S=M4;SC; if [[ $cur == enter ]];then R;echo -e "
 Программное обеспечение и документация pdftoppm защищены авторскими правами:
 Glyph & Cog, LLC, 1996–2011 гг.
";ES;fi;;
  5) S=M5;SC; if [[ $cur == enter ]];then R;echo -e "
 Инструменты Xpdf используют следующие коды выхода:
\e[32m  0\e[0m Нет ошибки.
\e[32m  1\e[0m Ошибка при открытии файла PDF.
\e[32m  2\e[0m Ошибка при открытии выходного файла.
\e[32m  3\e[0m Ошибка, связанная с разрешениями PDF.
\e[32m 99\e[0m Другая ошибка.
";ES;fi;;
  6) S=M6;SC; if [[ $cur == enter ]];then R;echo -e "
 Выбор значения качества JPEG. Значение должно быть целым числом от 0 до 100.
";ES;fi;;
  7) S=M7;SC; if [[ $cur == enter ]];then R;echo -e "
 Выберите прогрессивный вывод JPEG. Возможные значения:
\e[32m y\e[0m обозначающие прогрессивный (да)
\e[32m n\e[0m непрогрессивный (нет) соответственно.
";ES;fi;;
  8) S=M8;SC; if [[ $cur == enter ]];then R;echo -e "
 Устанавливает, следует ли вычислять оптимальные таблицы кодирования Хаффмана для
 выходных данных JPEG, которые будут создавать файлы меньшего размера, но выпол-
 нять дополнительный проход по данным. Значение должно быть \e[32my\e[0m или \e[32mn\e[0m, где \e[32my\e[0m выпол-
 няет оптимизацию, в противном случае используются таблицы Хаффмана по умолчанию.
";ES;fi;;
  9) S=M9;SC; if [[ $cur == enter ]];then R;echo -e "\e[32m
 pdftoppm -f 1 -singlefile -png file.pdf file_name
\e[0m";ES;fi;;
 10) S=M10;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m
 pdftoppm -png -f 1 -l 3 file.pdf file_name
\e[0m";ES;fi;;
 11) S=M11;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 12) S=M12;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 13) S=M13;SC;if [[ $cur == enter ]];then R;echo -e "\e[32m \e[0m";ES;fi;;
 14) S=M14;SC;if [[ $cur == enter ]];then R;echo -e "
 Определяет разрешение по осям X и Y в DPI.
 По умолчанию используется разрешение 150 точек на дюйм.
";ES;fi;;
 15) S=M15;SC;if [[ $cur == enter ]];then R;echo -e "
 Определяет разрешение X в DPI.
 По умолчанию используется разрешение 150 точек на дюйм.
 можно задать более высокое разрешение следующим образом:
\e[32m pdftoppm -rx 300 -png file.pdf file_name\e[0m
";ES;fi;;
 16) S=M16;SC;if [[ $cur == enter ]];then R;echo -e "
 Определяет разрешение Y в DPI.
 По умолчанию используется разрешение 150 точек на дюйм:
 можно задать более высокое разрешение следующим образом:
\e[32m pdftoppm -ry 300 -png file.pdf file_name\e[0m
";ES;fi;;
 17) S=M17;SC;if [[ $cur == enter ]];then R;echo -e "
 Масштабирует длинную сторону каждой страницы (ширина для альбомных страниц,
 высота для книжных страниц) в соответствии с масштабированием до пикселей.
 Размер короткой стороны будет определяться соотношением сторон страницы.
";ES;fi;;
 18) S=M18;SC;if [[ $cur == enter ]];then R;echo -e "
 Масштабирует каждую страницу по горизонтали, чтобы она соответствовала масштабу
 до х пикселей. Если для масштаба-у установлено значение -1, размер по вертикали
 будет определяться соотношением сторон страницы.
";ES;fi;;
 19) S=M19;SC;if [[ $cur == enter ]];then R;echo -e "
 Масштабирует каждую страницу по вертикали, чтобы она соответствовала масштабу
 до y пикселей. Если для масштаба-x установлено значение -1,
 размер по горизонтали будет определяться соотношением сторон страницы.
";ES;fi;;
 20) S=M20;SC;if [[ $cur == enter ]];then R;echo -e "
 Меняет местами горизонтальный и вертикальный размер
 для повернутого (альбомного) pdf перед масштабированием, а не после.
";ES;fi;;
 21) S=M21;SC;if [[ $cur == enter ]];then R;echo -e "

";ES;fi;;
#
 22) S=M22;SC;if [[ $cur == enter ]];then R;./nPdftoppm.sh;ES;fi;;
#
 23) S=M23;SC;if [[ $cur == enter ]];then R;echo -e "
 Fr 08 Jul 2022
 mPdftoppm - описание утилиты pdftoppm.
 Этот инструмент находится в пакете\e[32m poppler-utils\e[0m
 Конвертер Portable Document Format (PDF) в Portable Pixmap (PPM) (версия 3.03)
 Asciinema:  \e[36m https://asciinema.org/a/507180\e[0m
 Github:     \e[36m https://github.com/GrannikOleg/mPdftoppm\e[0m
 Gitlab:     \e[36m https://gitlab.com/grannik/mpdftoppm\e[0m
 Sourceforge:\e[36m https://sourceforge.net/projects/mpdftoppm/files/\e[0m
 Notabug:    \e[36m https://notabug.org/Grannikoleg/mPdftoppm\e[0m
 Codeberg:   \e[36m https://codeberg.org/Grannik/mPdftoppm\e[0m
 Bitbucket:  \e[36m https://bitbucket.org/grannikoleg/workspace/projects/MPDFTOP\e[0m
 Framagit:   \e[36m https://framagit.org/GrannikOleg/mpdftoppm\e[0m
 Gitea:      \e[36m https://try.gitea.io/Grannik/mPdftoppm\e[0m
 Gogs:       \e[36m https://try.gogs.io/Grannik/mPdftoppm\e[0m

 s - source      file источник
 m - menu        file меню
 n - simple menu file простое меню
 l - bash list   file лист
 t - text        file текстовый файл
";ES;fi;;
 24) S=M24;SC;if [[ $cur == enter ]];then R;clear;ls -l;exit 0;fi;;
 esac;POS;done
