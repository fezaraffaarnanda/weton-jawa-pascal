// Kelompok 9 1KS3 
// Nama program : JustKidding
// Cecilia Putri Dianti 222111964
// Feza Raffa Arnanda 222112058
// Hamdani 222112085
program funfact_weton;
uses crt;
var 
    opsi,opsi_warna,opsi_hewan,opsi_hobi, total:integer;
    month: string;
    year,date,max_date: longint;    
    kabisat:boolean;
label awal;
procedure pilih_funfact;
    begin
        clrscr;
        gotoxy(10,1);write('=======================================================================================================');
        gotoxy(10,2);write('============================          FUNFACT TENTANG DIRIMU                ===========================');
        gotoxy(10,3);write('=======================================================================================================');
        gotoxy(10,6);write('Pada program ini, kalian akan menginputkan beberapa hal yang menjadi favorit kalian selama ini, seperti');
        gotoxy(10,7);write('warna favorit, hewan favorit, dan hobi yang biasa kalian lakukan selama perkuliahan atau kehidupan ');
        gotoxy(10,8);write('sehari-hari');
        gotoxy(10,10);write('Output pada program ini nantinya kalian akan melihat funfact-funfact dari diri kalian berdasarkan');
        gotoxy(10,11);write('pilihan yang kalian pilih serta akan mencerminkan kepribadian kalian');
        gotoxy(10,14);write('NOTE ! : Program ini hanyalah untuk senang-senang aja, jangan dimasukin hati ya kalo liat hasilnya :D');
        gotoxy(39,19);write('Tekan <Enter> untuk lanjut ke programnya!');readkey;
        clrscr;
        gotoxy(10,1);write('=======================================================================================================');
        gotoxy(10,2);write('============================                WARNA FAVORIT                   ===========================');
        gotoxy(10,3);write('=======================================================================================================');
        gotoxy(51,7);writeln('1. Merah');
        gotoxy(51,8);writeln('2. Kuning');
        gotoxy(51,9);writeln('3. Biru');
        gotoxy(51,10);writeln('4. Orange');
        gotoxy(51,11);writeln('5. Hijau');
        gotoxy(51,12);writeln('6. Ungu');
        gotoxy(51,13);writeln('7. Hitam');
        gotoxy(51,14);writeln('8. Putih');
        gotoxy(51,15);writeln('9. Pink');
        gotoxy(51,16);writeln('10. Coklat');
        gotoxy(51,17);writeln('11. Abu-abu');
        gotoxy(45,20);write('Pilihanmu : ');readln(opsi_warna);
        if (opsi_warna<1) or (opsi_warna>11) then 
            begin
                textcolor(red);
                gotoxy(42,22);
                writeln('Input yang anda masukkan tidak sesuai!');readkey;
                textcolor(black);
                pilih_funfact;
            end;
        clrscr;
        gotoxy(10,1);write('=======================================================================================================');
        gotoxy(10,2);write('===========================                HEWAN FAVORIT                    ===========================');
        gotoxy(10,3);write('=======================================================================================================');
        gotoxy(51,9);writeln('1. Biawak');
        gotoxy(51,10);writeln('2. Plankton');
        gotoxy(51,11);writeln('3. Kecoa');
        gotoxy(51,12);writeln('4. Bajing');
        gotoxy(51,13);writeln('5. Babi');
        gotoxy(51,14);writeln('6. Tomcat');
        gotoxy(51,15);writeln('7. Bangsat');
        gotoxy(47,20);write('Pilihanmu :  ');readln(opsi_hewan);
        if (opsi_hewan<1) or (opsi_hewan>7) then 
            begin
                textcolor(red);
                gotoxy(42,22);
                writeln('Input yang anda masukkan tidak sesuai!');readkey;
                textcolor(black);
                pilih_funfact;
            end;
        clrscr;
        gotoxy(10,1);write('=======================================================================================================');
        gotoxy(10,2);write('============================                  HOBI                          ===========================');
        gotoxy(10,3);write('=======================================================================================================');
        gotoxy(51,8);writeln('1. Nongkrong');
        gotoxy(51,9);writeln('2. Sambat');
        gotoxy(51,10);writeln('3. Ngerjain projek alpro');
        gotoxy(51,11);writeln('4. Tidur');
        gotoxy(51,12);writeln('5. Nyari pacar');
        gotoxy(51,13);writeln('6. Ngepin orang di zoom');
        gotoxy(51,14);writeln('7. Oncam VBG doank');
        gotoxy(51,15);writeln('8. Tahsin/Tahfidz');
        gotoxy(47,20);write('Pilihanmu : '); readln(opsi_hobi);
        if (opsi_hobi<1) or (opsi_hobi>8) then 
            begin
                textcolor(red);
                gotoxy(42,22);
                writeln('Input yang anda masukkan tidak sesuai!');readkey;
                textcolor(black);
                pilih_funfact;
            end;
    end;
procedure hasil_funfact; //mengeluarkan output hasil dari input semua funfact
    begin
        gotoxy(13,6);write('Warna : ');
        case opsi_warna of 
            1   : begin
                    writeln('Warna merah memberi arti sebuah simbol keberanian, kekuatan, energi, gairah, dan melambangkan ');
                    gotoxy(21,7);writeln('kegembiraan.');
                  end;
            2   : begin
                    writeln('Warna kuning memberi arti kehangatan dan rasa bahagia dan seolah ingin memberi hasrat untuk ');
                    gotoxy(21,7);writeln('bermain, menyatu dengan ekstrovert.');
                  end;
            3   : begin
                    writeln('Warna biru memberikan kesan profesional dan kepercayaan, merangsang pemikiran yang jernih serta ');
                    gotoxy(21,7);writeln('simbol kekuatan.');
                  end;
            4   : begin
                    writeln('Warna orange melambangkan pribadi yang suka menonjol dan menyenangkan, tidak kenal takut dan penuh');
                    gotoxy(21,7);writeln('rasa penasaran.');
                  end;
            5   : begin
                    writeln('Warna hijau melambangkan harmoni dan keseimbangan, terus terang dalam berkata-kata, dan mampu');
                    gotoxy(21,7);writeln('bersosialisasi dengan baik');
                  end;
            6   : begin
                    writeln('Warna ungu melambangkan pribadi yang individualistik, kreatif, humoris tetapi sensitif, dan');
                    gotoxy(21,7);writeln('merasa ingin tampil beda');
                  end;
            7   : begin
                    writeln('Warna hitam melambangkan pribadi yang bermartabat, dihargai orang lain tetapi tidak pula');
                    gotoxy(21,7);writeln('menonjolkan diri, terkadang pula mempunyai sikap yang misterius');
                  end;
            8   : begin
                    writeln('Warna putih biasanya merupakan orang yang perfeksionis serta memiliki penetapan standar yang tinggi');
                    gotoxy(21,7);writeln('namun dengan gaya hidup yang sederhana');
                   end;
            9   : begin
                    writeln('Warna pink melambangkan sikap keibuan, selalu merasa butuh perlindungan, perilaku khusus');
                    gotoxy(21,7);writeln('serta memiliki sikap yang charming dan lembut');
                  end;
            10  : begin
                    writeln('Warna coklat merupakan pribadi yang memiliki stamina yang baik, sabar, berpendirian kuat');
                    gotoxy(21,7);writeln('serta mudah intropeksi diri, sehingga penyuka warna cokelat dapat diandalkan');
                  end;
            11  : begin
                    writeln('Warna abu-abu merupakan pribadi yang hati-hati, bakat dalam berbisnis, dan pekerja keras');
                  end;
        end;
        gotoxy(13,9);write('Hewan : ');
        case opsi_hewan of
            1   : begin
                    writeln('Pecinta biawak merupakan orang yang berani akan tantangan, agresif, dan pemberani!');
                  end;
            2   : begin
                    writeln('Plankton merupakan organisme kecil, sehingga orang yang menyukai hewan ini biasanya memiliki');
                    gotoxy(21,10);writeln('hobi yang aneh, seperti mencuri resep rahasia Mr Krab!');
                  end;
            3   : begin
                    writeln('Kecoa merupakan musuh terbesar kita sebagai anak kos, sehingga orang yang menyukai kecoa');
                    gotoxy(21,10);writeln('biasanya mempunyai sifat pembuat onar, gak jelas, dan jorok!');
                  end;
            4   : writeln('Bajing adalah hewan mirip tupai, sehingga orang yang menyukai bajing biasanya pintar seperti Sandy!');
            5   : begin
                    writeln('Babi adalah hewan yang haram dikonsumsi bagi orang muslim, jadi haram juga hukumnya menjadi');
                    gotoxy(21,10);writeln('teman yang menyukai babi.');
                  end;
            6   : begin
                    writeln('Tomcat sempat viral saat itu yang menyebabkan warga gatal-gatal, sehingga orang yang');
                    gotoxy(21,10);writeln('menyukai tomcat biasanya suka mengganggu orang!');
                  end;
            7   : begin
                    writeln('Bangsat adalah hewan mirip kutu, sehingga orang yang menyukai bangsat biasanya suka');
                    gotoxy(21,10);writeln('bikin orang ga nyaman, jauhin aja!');
                  end;
        end;
        gotoxy(13,12);write('Hobi  : ');
        case opsi_hobi of
            1 : writeln('Semakin sering kamu nongkrong, maka peluang mencari jodoh akan semakin tinggi! Teruskan!');
            2 : writeln('Hentikan sambatmu, mari mengerjakan projek alpro bersamaku');
            3 : writeln('wahh, Bu Nucke dan Kak Rifky pasti sangat bangga :D ');
            4 : writeln('Raihlah mimpi setinggi langit!');
            5 : writeln('Nyari doang, dapet kagak');
            6 : writeln('Cieee, siapa nih? Jangan-jangan naksir dosennya wkwkwk');
            7 : writeln('Alesan klasik pengen offcam tapi gapengen ketauan banget');
            8 : writeln('Subhanallah, lulus stis sampingannya jadi ustadz/ustadzah yaa!!');
        end;
        gotoxy(13,17);write('Note : Semua hasil di atas hanyalah bercanda, jangan dimasukin hati ya :D');
        gotoxy(39,19);write('Tekan <Enter> untuk lanjut ke programnya!');readkey;
        readkey;
    end;
procedure funfact;
    begin
        clrscr;
        pilih_funfact;
        clrscr;
        gotoxy(10,1);write('=======================================================================================================');
        gotoxy(10,2);write('============================          FUNFACT TENTANG DIRIMU                ===========================');
        gotoxy(10,3);write('=======================================================================================================');
        writeln;
        hasil_funfact;
    end;
procedure weton;
type 
    hari_masehi = (senin,selasa,rabu,kamis,jumat,sabtu,minggu); //merupakan tipe data yang hanya bisa diisi hari dalam kalender masehi
    hari_jawa = (pahing,pon,wage,kliwon,legi); //merupakan tipe data yang hanya bisa diisi hari dalam kalender jawa
var 
    harijawa1,harijawa2:hari_jawa;
    haribiasa1,haribiasa2:hari_masehi;
    nama1,nama2:string;
    convert_harijawa1,convert_haribiasa1,convert_harijawa2,convert_haribiasa2,total1,total2,total12:integer;
    begin
        clrscr;
        gotoxy(10,1);write('=======================================================================================================');
        gotoxy(10,2);write('============================                  WETON JAWA                    ===========================');
        gotoxy(10,3);write('=======================================================================================================');
        gotoxy(10,6);write('Weton merupakan penanggalan atau perhitungan hari lahir seseorang yang sering digunakan sebagai patokan');
        gotoxy(10,7);write('untuk merujuk ramalan tertentu. Menurut kepercayaan Jawa weton bisa  berkaitan dengan ramalan peristiwa');
        gotoxy(10,8);write('tertentu. Ramalan tersebut ditelaah melalui suatu siklus hari dalam kalender tradisional.');
        writeln;
        gotoxy(10,10);write('Sebelum kamu mengisi inputan, kamu harus tau pada hari apa kamu dan calon pasangan kamu (kalo ada :p)');
        gotoxy(10,11);write('lahir dalam masehi (Senin-Minggu) dan juga hari dalam jawa  ketika kamu dan calon pasangan kamu lahir');
        gotoxy(10,12);write('(Pahing, Pon, Wage,Kliwon, dan Legi).');
        gotoxy(10,14);write('Buat kalian yang belum tahu hari apa kalian lahir dalam jawa, silahkan akses link berikut!');
        gotoxy(10,16);write('s.stis.ac.id/kalenderjawa');
        gotoxy(39,19);write('Tekan <Enter> untuk lanjut ke programnya!');readkey;
        clrscr;
        gotoxy(10,1);write('=======================================================================================================');
        gotoxy(10,2);write('============================                  WETON JAWA                    ===========================');
        gotoxy(10,3);write('=======================================================================================================');
        gotoxy(49,5);write('Input hari lahir dirimu!');
        gotoxY(40,7);write('Nama                               : ');readln(nama1);
        gotoxy(40,8);write('Masukkan hari lahir (Senin-Minggu) : ');readln(haribiasa1);
        gotoxy(40,9);write('Masukkan hari lahir dalam jawa     : ');readln(harijawa1);
        gotoxy(44,11);write('Input hari lahir calon pasanganmu! ');
        gotoxy(40,13);write('Nama                               : ');readln(nama2);
        gotoxy(40,14);write('Masukkan hari lahir (Senin-Minggu) : ');readln(haribiasa2);
        gotoxy(40,15);write('Masukkan hari lahir dalam jawa     : ');readln(harijawa2);
        gotoxy(40,20);write('Tekan <Enter> untuk lihat hasilnya!');readkey;
        clrscr;
        case ord(haribiasa1) of // fungsi ord akan mengubah type data haribiasa1 ke dalam integer sesuai urutan dalam type, misal senin, maka ord(senin) adalah 0
            6   : convert_haribiasa1:=5;
            0   : convert_haribiasa1:=4;
            1   : convert_haribiasa1:=3;
            2   : convert_haribiasa1:=7;
            3   : convert_haribiasa1:=8;
            4   : convert_haribiasa1:=6;
            5   : convert_haribiasa1:=9;
        end;
        case ord(harijawa1) of
            0   : convert_harijawa1:=9;
            1   : convert_harijawa1:=7;
            2   : convert_harijawa1:=4;
            3   : convert_harijawa1:=8;
            4   : convert_harijawa1:=5;
        end;
        total1:=convert_haribiasa1+convert_harijawa1;
        case ord(haribiasa2) of
            6   : convert_haribiasa2:=5;
            0   : convert_haribiasa2:=4;
            1   : convert_haribiasa2:=3;
            2   : convert_haribiasa2:=7;
            3   : convert_haribiasa2:=8;
            4   : convert_haribiasa2:=6;
            5   : convert_haribiasa2:=9;
        end;
        case ord(harijawa2) of
            0   : convert_harijawa2:=9;
            1   : convert_harijawa2:=7;
            2   : convert_harijawa2:=4;
            3   : convert_harijawa2:=8;
            4   : convert_harijawa2:=5;
        end;
        total2:=convert_haribiasa2+convert_harijawa2; //rumus menghitung weton
        total12:=total1+total2;
        gotoxy(10,1);write('=======================================================================================================');
        gotoxy(10,2);write('============================                       HASIL                    ===========================');
        gotoxy(10,3);write('=======================================================================================================');
        gotoxy(10,5);write('Menurut weton jawa, pasangan ',nama1,' dan ',nama2,' menghasilkan weton : ');
        gotoxy(10,8); 
        case total12 of // perhitungan weton memiliki beberapa kemungkinan hasil
            1,9,10,18,19,27,28,36 : begin
                                        writeln('Pegat, pasangan dengan karakter pegat ini sering mengalami berbagai macam permasalahan dalam ');
                                        gotoxy(10,9);write('rumah tangga.');
                                    end;
            2,11,20,29  : begin
                            writeln('Ratu, menunjukkan pasangan yang sangat harmonis. Tak heran jika banyak orang yang segan,');
                            gotoxy(10,9);write('menghormati, bahkan iri dengan pasangan ini.');
                          end;
            3,12,21,30  : begin
                            writeln('Jodoh,karena hasil weton ini dipercaya cocok dan harmonis serta bisa menerima kelebihan');
                            gotoxy(10,9);write('dan kekurangan masing-masing.');
                          end;
            4,13,22,31  : begin 
                            writeln('Topo, akan mengalami banyak kesusahan di awal pernikahan karena masih dalam tahap proses memahami');
                            gotoxy(10,9);write('satu sama lain, tapi akan berujung pada kebahagiaan.');
                          end;
            5,14,23,32  : begin
                            writeln('Tinari, melambangkan kebahagiaan dan keberuntungan. Pasangan tinari mendapatkan kehidupan');
                            gotoxy(10,9);write('yang mudah dan keberuntungan.');
                          end;
            6,15,24,33  : begin
                            writeln('Padu, pasangan dengan weton ini cenderung sering mengalami pertengkaran yang dipicu banyak hal');
                            gotoxy(10,9);write('bahkan persoalan sepele tetapi tidak akan menimbulkan kekacauan yang besar.');
                          end;
            7,16,25,34  : begin
                            writeln('Sujanan, pasangan berweton sujanan dapat sering mengalami pertengkaran dan masalah perselingkuhan.');
                          end;
            8,17,26,35  : begin
                            writeln('Pesthi, pasangan dengan hasil hitangan weton jawa pesthi akan rukun, tenteram, dan damai. Meskipun nanti');
                            gotoxy(10,9);write('ada masalah yang menerpa, pasangan ini dinilai akan tetap harmonis dan bahagia.');
                          end;
        end;
        gotoxy(10,13);writeln('Note : Hasil di atas merupakan perhitungan jawa, jodoh ada di tangan Tuhan ! :D');
    end;
procedure sign(z:integer); //z merupakan paramater kode zodiak setelah diperiksa di prosedur hitung_shio_zodiak
    begin
        case z of
        1:  begin
            writeln('Zodiak     : Capricorn');
            writeln('Karakter   : Dewasa dan disiplin, Capricorn seringkali menganggap diri mereka  sebagAi seorang  pemimpin yang baik,');
            writeln('             tapi sayangnya mereka kerap mengalami kesulitan untuk mengorbankan energi, waktu, dan ego demi  orang ');
            writeln('             lain Bagi seorang Capricorn, status dan pekerjaan adalah dua hal yang cukup penting, dan berkat ambisi');
            writeln('             mereka yang terbilang besar, Capricorn tidak keberatan untuk menjadi seorang workaholic. ');
            writeln;
            writeln('Daya Tarik : Si bijak sana dan pekerja keras!')
            end;
        2:  begin
            writeln('Zodiak     : Aquarius');
            writeln('Karakter   : Aquarius dikenal sebagai zodiak yang cerdas. Kecerdasan mereka tidak melulu akademis, kebanyakan dari');
            writeln('             pemilik zodiak ini mahir dalam bidang musik, kecantikan, acting, dan sebagainya. Aquarius benar-benar');
            writeln('             mendalami passion mereka masing-masing, and they''re good at what they do. ');
            writeln;
            writeln('Daya Tarik : Si tenang dan mudah bergaul');
            end;
        3:  begin
            writeln('Zodiak     : Pisces');
            writeln('Karakter   : Tiga kata: kreatif, imajinatif, romantis. Seorang Pisces gemar berkhayal,  membuat otak mereka seakan-');
            writeln('             akan sebuah mesin pembuat ide, tapi kebiasaan ini juga dapat membuat Pisces sering overthinking. Kalau');
            writeln('             sedang cemas, mudah sekali bagi para Pisces untuk membuat berbagai macam skenario di kepala mereka⁠ dan');
            writeln('             sayangnya, mereka lebih sering membayangkan skenario terburuk daripada berpikir secara positif.');
            writeln;
            writeln('Daya Tarik : Si romantis dan peduli');

            end;
        4:  begin
            writeln('Zodiak     : Aries');
            writeln('Karakter   : Beberapa sifat Aries bisa  dibilang cukup  mengintimidasi,  sebut saja keras kepala, kompetitif, bossy,');
            writeln('             dan  mudah cemburu. Tapi, Aries  juga sungguh  setia  dan tidak  takut  untuk  melindungimu, jadi kalau');
            writeln('             sahabat atau pasanganmu adalah seorang Aries, anggap dirimu beruntung.');
            writeln;
            writeln('Daya Tarik : Si energik dan penuh kreativitas');
            end;
        5:  begin
            writeln('Zodiak     : Taurus');
            writeln('Karakter   : Salah satu sifat yang paling identik  dengan zodiak  Taurus adalah  santai. Yes, bisa  dibilang seorang');
            writeln('             Taurus bukanlah orang yang ribet atau banyak mau. Plus, Taurus selalu mencoba untuk mengutamakan logika');
            writeln('             daripada perasaan, sehingga keputusan yang mereka ambil kerap dipertimbangkan secara rasional.');
            writeln;
            writeln('Daya Tarik : Si tekun dan sabar');
            end;
        6:  begin
            writeln('Gemini');
            writeln('Karakter   : Zodiak yang berlambang sepasang saudara kembar ini seringkali terkesan bermuka dua,  tapi sebenarnya'); 
            writeln('             kesalahpahaman ini muncul karena Gemini mampu berbaur dengan siapa saja. Bersosialisasi bukanlah hal');
            writeln('             sulit untuk Gemini, dan mereka pun memiliki pembawaan yang luwes, sehingga cocok dengan banyak orang.');
            writeln;
            writeln('Daya Tarik : Si cerdas dan berkarisma');
            end;
        7:  begin
            writeln('Zodiak     : Cancer');
            writeln('Karakter   : Sensitif dan  emosional, tidak sulit bagi para  Cancer untuk terbawa  perasaan.  Segala perasaan, mulai');
            writeln('             dari  kegembiraan,  kesedihan,  kekecewaan, hingga  kemarahan, mereka alami  secara intens.  Sebenarnya');
            writeln('             ini bukanlah hal yang buruk karena sifat ini  menjadikan Cancer seorang teman yang setia dan pengertian');
            writeln('             hanya saja  terkadang  sulit untuk  dikendalikan, sehingga  Cancer mudah  hanyut dalam  perasaan. Oops!');
            writeln;
            writeln('Daya Tarik : Penuh perhatian dan memiliki simpati');
            end;
        8:  begin
            writeln('Zodiak     : Leo');
            writeln('Karakter   : kamu yang berzodiak Leo pasti sering disebut narsis, egois, ambisius, dan kompetitif, kan? karena para');
            writeln('             Leo cenderung menyukai sensasi persaingan dan bertekad kuat serta percaya diri!  Nah, meskipun begitu,');
            writeln('             Leo  pun penuh  kasih sayang  dan rela  berkorban untuk  melindungi  orang - orang yang mereka cintai.');
            writeln('             You''re full of love!');
            writeln;
            writeln('Daya Tarik : Si dermawan dan loyal');

            end;                        //baru sampe virgo
        9:  begin
            writeln('Zodiak     : Virgo');
            writeln('Karakter   : Perfeksionis. Yup, para pemilik zodiak Virgo terkenal sebagai pemerhati detail dan terorganisir. Selain');
            writeln('             itu, mereka pun  bisa dibilang  memiliki sifat keibuan dan ringan  tangan. Virgo kerap dimintai nasihat,');
            writeln('             dan dicap oleh  banyak orang sebagai  pendengar yang baik Virgo memiliki  rasa peduli yang cukup tinggi.');
            writeln;
            writeln('Daya Tarik : Si rajin dan sederhana');
            end;
        10: begin
            writeln('Zodiak     : Libra');
            writeln('Karakter   : Bersosialisasi, perhatian, dan pujian—itulah tiga hal yang  digemari seorang Libra. Libra gemar bergaul');
            writeln('             dan energinya terisi ketika berada di keramaian, seperti  konser dan pesta. Well, bisa  dibilang mereka');
            writeln('             adalah party animal, so kalau kamu menggelar pesta, undanglah setidaknya seorang Libra untuk meramaikan');
            writeln('             suasana.');
            writeln;
            writeln('Daya Tarik : Si stabil dan senang menolong');

            end;
        11: begin
            writeln('Zodiak     : Scorpio');
            writeln('Karakter   : Walaupun Scorpio  cenderung misterius dan sulit untuk dibaca, zodiak yang berlambang  kalajengking ini');
            writeln('             cukup emosional dan sensitif, lho. Mungkin mereka tampak tangguh dan karismatik, tapi sebenarnya tidak');
            writeln('             sulit untuk  membuat seorang  Scorpio sedih. Kalau deketin scorpio,  kamu bakal nyadar kalo mereka tuh');
            writeln('             tuh cukup melankolis orangnya');
            writeln;
            writeln('Daya Tarik : Si pantang menyerah dan tak pelit');
            end;
        12: begin
            writeln('Zodiak     : Sagitarius');
            writeln('Karakter   : Sagitarius memiliki jiwa petualang sejati. Mereka gemar menjelajah tempat-tempat baru, bertemu orang-orang');
            writeln('             baru, serta mencoba hal-hal yang belum pernah  mereka lakukan sebelumnya. Real adventurers!. mereka sangat');
            writeln('             gemar  berjelajahdan dan membutuhkan  kebebasan. Oleh karena itu, mereka  terkesan susah diatur, dan keras');
            writeln('             kepala. Jadi, jangan pernah mengekang seorang sagitarius!'); 
            writeln;
            writeln('Daya Tarik : Si jujur dan berwawasan luas');
            end;        
        end;
    end;
procedure shio(x:longint); //x merupakan parameter yg berisi tahun lahir untuk memeriksa shio
    var cek_shio:smallint;
    begin
        if x<0 then 
            begin
            gotoxy(42,24);
            textcolor(red);
            writeln('Tahun yang anda masukkan tidak ada!');
            textcolor(black);
            end
        else
        begin
        cek_shio:=x mod 12; //rumus mengecek shio, urutan shio selalu berulang setiap 12 tahun sekali
        writeln;
        case cek_shio of
        0: begin
            writeln('Shio       : Monyet');
            writeln('Deskripsi  : Monyet memiliki karakter penemu. Orang yang lahir di tahun monyet menyukai  tantangan, seorang penghibur');
            writeln('             alami, serta menyukai kreativitas. Karakter shio monyet dapat memecahkan masalah yang rumit dengan mudah,');
            writeln('             sangat pandai, ambisius dan dapat mencapai hal-hal yang tidak berani dicoba orang lain.');
            end;
        1: begin
            writeln('Shio       : Ayam');
            writeln('Deskripsi  : Shio ayam jantan terkadang memiliki karakter kurang ajar dan terlalu percaya diri, tetapi pada dasarnya,');
            writeln('             mereka  bisa jadi sangat  tradisional.  Pemilik shio  ayam jantan  juga suka  menjadi  pusat  perhatian, ');
            writeln('             karismatik alami, dan pendongeng yang berbakat.');
            end;
        2: begin
            writeln('Shio       : Anjing');
            writeln('Deskripsi  : Seseorang yang lahir di tahun  Anjing adalah  orang yang cerdas dan terus  terang. Mereka  memiliki rasa ');
            writeln('             kesetiaan yang dalam dan hasrat akan keadilan dan kesetaraan. Orang yang lahir di bawah tahun ini secara ');
            writeln('             alami tahu bagaimana menghubungkan orang dan bekerja dengan orang lain. ');
            end;
        3: begin
            writeln('Shio       : Babi');
            writeln('Deskripsi  : Babi melambangkan  kejujuran,  kesederhanaan,  dan keberanian. Babi juga dikenal maksimal dalam melakukan');
            writeln('             sesuatu baik dalam  percintaan,  persahabatan, maupun  kemurahan hati. Dengan  kepribadian yang besar dan');
            writeln('             hasrat untuk berekspresi, Babi tidak pernah kekurangan teman.');
            end;
        4: begin
            writeln('Shio       : Tikus');
            writeln('Deskripsi  : Tikus dikenal dengan pesona dan kreativitasnya. Tikus juga dikenal lugas, sangat ingin tahu, menyenangkan,');
            writeln('             dapat  diandalkan, dan  merupakan  pencari kesepakatan. Tikus akan bermurah  hati hanya kepada orang yang');
            writeln('             paling dekat dengannya.');
            end;
        5: begin
            writeln('Shio       : Kerbau');
            writeln('Deskripsi  : Kerbau melambangkan  keberuntungan melalui kerja keras dan  ketabahan. Kerbau juga dikenal memiliki sifat');
            writeln('             yang sabar, tak kenal lelah, dan  menyukai  rutinitas. Selain itu, kerbau juga pendengar  yang baik meski');
            writeln('             keras kepala atau pemikirannya susah diubah.');
            end;
        6: begin
            writeln('Shio       : Macan');
            writeln('Deskripsi  : Macan mempunyai karakter  pemberontak, penuh warna, dan tidak dapat diprediksi, namun dapat  memunculkan');
            writeln('             kekaguman dan rasa hormat. Karakter macan selalu siap beraksi, tak kenal takut, dan bisa berjuang dengan');
            writeln('             keraguan');
            end;
        7: begin
            writeln('Shio       : Kelinci');
            writeln('Deskripsi  : Kelinci memiliki karakter yang cenderung tenang, memiliki banyak nasihat, dan sebisa mungkin menghindari');
            writeln('             drama. Mereka juga suka mengelilingi  diri mereka dengan keindahan namun bisa menjadi  cenderung menjadi');
            writeln('             pemurung.');
            end;
        8: begin
            writeln('Shio       : Naga');
            writeln('Deskripsi  : Karakter shio naga yakni penuh energi dan kekuatan, hidup yang penuh warna, dan selalu sibuk. Pemilik');
            writeln('             shio naga juga terkenal eksentrik, penuntut, tidak pernah kekurangan teman atau pengagum. ');
            end;
        9: begin
            writeln('Shio       : Ular');
            writeln('Deskripsi  : Karakter shio ular introspektif dan bisa terlihat sebagai misteri pada awalnya karena terlihat memiliki');
            writeln('             dunianya sendiri. Mereka sangat intuitif dan tidak suka terburu-buru saat menganalisis situasi, anggun');
            writeln('             dan bersuara lembut.');
            end;
        10: begin
            writeln('Shio       : Kuda');
            writeln('Deskripsi  : Shio Kuda memiliki sifat penuh  dengan optimisme  dan energi tinggi, meskipun  suasana hati mereka dapat');
            writeln('             menyebabkan mereka menjadi pemarah. Selain itu, mereka juga intuitif, banyak bicara, dan dapat mendorong');
            writeln('             orang yang paling pemalu untuk terbuka tentang kehidupan mereka. ');
            end;
        11: begin
            writeln('Shio       : Kambing');
            writeln('Deskripsi  : Orang dengan karakter shio kambing  yakni memiliki  hati yang besar dan  komitmen untuk membantu sesama.');
            writeln('             Seringkali pemalu,  mereka biasanya  tertarik pada bidang yang  berhubungan dengan kreativitas,  seperti');
            writeln('             seni. Karakter shio kambing juga baik hati dan penyayang.');
            end;
        end;
        end;
    end;

procedure cek_kabisat; 
    begin
        if((year mod 400)= 0) then
            kabisat:= true
        else if((year mod 100) = 0) then
            kabisat:= false
        else if((year mod 4) = 0) then
            kabisat:= true
        else
            kabisat:= false;
    end;

procedure hitung_shio_zodiak;
begin
    clrscr;
    gotoxy(10,1);write('=======================================================================================================');
    gotoxy(10,2);write('============================              ZODIAK DAN SHIO                   ===========================');
    gotoxy(10,3);write('=======================================================================================================');
    gotoxy(17,6);write('Zodiak adalah Ramalan astrologi didasarkan pada kedudukan benda-benda tata surya. Seseorang akan');
    gotoxy(10,7);write('menyandang tanda zodiaknya  berdasarkan  kedudukan  matahari di dalam zodiak pada tanggal kelahirannya.');
    gotoxy(10,8);write('Misalnya,  orang yang  lahir awal  Desember akan  berzodiak  Sagitarius,  karena pada tanggal  tersebut ');
    gotoxy(10,9);write('Matahari berada di wilayah rasi bintang Sagitarius.');

    gotoxy(17,12);write('Shio adalah dua belas hewan yang mewakili  tahun dan bulan  tertentu  dalam astrologi  Tionghoa.');
    gotoxy(10,13);write('Tiap hewan  dalam shio  mewakili  tahun tertentu  dan 12 hewan shio membentuk  satu periode yang selalu'); 
    gotoxy(10,14);write('berulang 12 tahun sekali. Penetapan 12 tahun ini didasarkan pada pembulatan  11,85  tahun masa revolusi');
    gotoxy(10,15);write('planet Yupiter terhadap matahari');
    gotoxy(39,19);write('Tekan <Enter> untuk lanjut ke programnya!');readkey;
    clrscr;
    gotoxy(10,1);write('=======================================================================================================');
    gotoxy(10,2);write('============================      Ramalan berdasarkan shio dan zodiak       ===========================');
    gotoxy(10,3);write('=======================================================================================================');
    gotoxy(45,6);writeln('Masukkan tanggal lahir anda :');
    gotoxy(51,8);write('Tanggal  : '); readln(date);
    gotoxy(51,9);write('Bulan    : '); readln(month); 
    gotoxy(51,10);write('Tahun    : '); readln(year);
    writeln;
    writeln;
    writeln;

    cek_kabisat;
    case lowercase(month) of //pada bagian ini, input tanggal, bulan, dan tahun akan di cek kebenarannya, serta menentukan zodiaknya.
    '1','januari':  begin 
            max_date:= 31;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=20 then sign(1)
                    else sign(2);
                    shio(year);     
                end;            
        end;
    '2','februari': begin
            if kabisat=true then max_date:= 29
            else max_date:=28;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date <=19 then sign(2)
                    else sign(3);
                    shio(year);     
                end;            
        end;
    '3','maret':    begin
            max_date:= 31;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=20 then sign(3)
                    else sign(4);
                    shio(year);     
                end;        
        end;
    '4','april':    begin
            max_date:= 30;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=19 then sign(4)
                    else sign(5);
                    shio(year);     
                end;
        end;
    '5','mei':  begin
            max_date:= 31;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=20 then sign(5)
                    else sign(6);
                    shio(year);     
                end;            
        end;
    '6','juni': begin
            max_date:= 30;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=21 then sign(6)
                    else sign(7);
                    shio(year);     
                end;            
        end;
    '7','juli': begin
            max_date:= 31;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=23 then sign(7)
                    else sign(8);
                    shio(year);     
                end;            
        end;
    '8','agustus':  begin
            max_date:= 31;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=23 then sign(8)
                    else sign(9);
                    shio(year);     
                end;
        end;
    '9','september':    begin
            max_date:= 30;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=22 then sign(9)
                    else sign(10);
                    shio(year);     
                end;            
        end;
    '10','oktober': begin
            max_date:= 31;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=22 then sign(10)
                    else sign(11);
                    shio(year);     
                end;            
        end;
    '11','november':    begin
            max_date:= 30;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=22 then sign(11)
                    else sign(12);
                    shio(year);     
                end;
            
        end;
    '12','desember':    begin
            max_date:= 31;
            if (date<1) or (date>=max_date) then 
                begin
                    gotoxy(42,15);
                    textcolor(red);
                    writeln('Tanggal yang anda masukkan tidak ada!');
                    textcolor(black);
                end
            else 
                begin
                    if date<=20 then sign(12)
                    else sign(1);
                    shio(year);     
                end;
        end
    else 
        begin
            gotoxy(42,15);
            textcolor(red);
            writeln('Bulan yang anda masukkan tidak sesuai!');
            textcolor(black);
        end;
    end;
    WRITELN;
end;
procedure Input_Nama;
    var a,b,i, sum: Integer;
        N : array [1..20] of Char;
        M : array [1..20] of Integer;
begin
    clrscr;
    gotoxy(10,1);write('=======================================================================================================');
    gotoxy(10,2);write('============================               TINGKAT KECOCOKAN                ===========================');
    gotoxy(10,3);write('=======================================================================================================');
    gotoxy(23,12);writeln('  Program tingkat kecocokan adalah program untuk mengetahui kecocokan pasangan  '); delay(100);
    gotoxy(26,13);writeln('       yang diukur berdasarkan inisial dari nama user dan pasangannya          '); delay(100);
    writeln;
    gotoxy(39,19);write('Tekan <Enter> untuk lanjut ke programnya!');readkey;
    clrscr;
    gotoxy(10,1);write('=======================================================================================================');
    gotoxy(10,2);write('============================               TINGKAT KECOCOKAN                ===========================');
    gotoxy(10,3);write('=======================================================================================================');
    gotoxy(46,5);write('Berapa kata nama Anda ? '); readln(a);
    sum:=0; 
    for i := 1 to a do
        begin
        gotoxy(46,i+5);write('Inisial ke-',i,' = '); readln(N[i]);
        M[i]:= ord(N[i])+1;
        end;
    gotoxy(46,a+7);write('Berapa kata nama pasangan Anda ? '); readln(b);
    for i := (a+1) to (a+b) do
        begin
        gotoxy(46,i+7);write('Inisial ke-',(i-a),' = '); readln(N[i]);
        M[i]:= ord(N[i])+1;
        end;
    for i := 1 to (a+b) do sum := sum + M[i]; 
    total := (sum*2) mod 100; //rumus mengecek kecocokan, rumus ini hanya rekayasa.
end;

procedure tampilan;
var outline,isi: array [1..19] of string;
    i:integer;
begin
    clrscr;
    gotoxy(10,1);write('=======================================================================================================');
    gotoxy(10,2);write('============================                    HASIL                       ===========================');
    gotoxy(10,3);write('=======================================================================================================');
    outline[1]   :='      * * * *               * * * *      ';  
    outline[2]   :='    *         *           *         *    ';  // variabel outline merupakan border untuk bentuk love
    outline[3]   :='  *             *       *             *  ';  
    outline[4]   :='*                 *   *                 *';  
    outline[5]   :='*                   *                   *';  
    outline[6]   :='*                                       *';
    outline[7]   :='*                                       *';  
    outline[8]   :='*                                       *';  
    outline[9]   :='*                                       *';  
    outline[10]  :='  *                                   *  ';  
    outline[11]  :='    *                               *    ';  
    outline[12]  :='      *                           *      ';  
    outline[13]  :='        *                       *        ';  
    outline[14]  :='          *                   *          ';  
    outline[15]  :='            *               *            ';  
    outline[16]  :='              *           *              ';  
    outline[17]  :='                *       *                ';  
    outline[18]  :='                  *   *                  ';
    outline[19]  :='                    *                    ';  

    isi[1]   :='      * * * *               * * * *       ';  
    isi[2]   :='    * * * * * *           * * * * * *     ';  
    isi[3]   :='  * * * * * * * *       * * * * * * * *   ';  //variabel isi merupakan isian untuk bentuk love
    isi[4]   :='* * * * * * * * * *   * * * * * * * * * * ';  
    isi[5]   :='* * * * * * * * * * * * * * * * * * * * * ';  
    isi[6]   :='* * * * * * * * * * * * * * * * * * * * * ';
    isi[7]   :='* * * * * * * * * * * * * * * * * * * * * ';  
    isi[8]   :='* * * * * * * * * * * * * * * * * * * * * ';  
    isi[9]   :='* * * * * * * * * * * * * * * * * * * * * ';  
    isi[10]  :='  * * * * * * * * * * * * * * * * * * *   ';  
    isi[11]  :='    * * * * * * * * * * * * * * * * *     ';  
    isi[12]  :='      * * * * * * * * * * * * * * *       ';  
    isi[13]  :='        * * * * * * * * * * * * *         ';  
    isi[14]  :='          * * * * * * * * * * *           ';  
    isi[15]  :='            * * * * * * * * *             ';  
    isi[16]  :='              * * * * * * *               ';  
    isi[17]  :='                * * * * *                 ';  
    isi[18]  :='                  * * *                   ';
    isi[19]  :='                    *                     '; 

    for i:=1 to 19 do 
    begin
        gotoxy(40, 5+i); writeln(outline[i]);
        delay(60);
    end;

    case total of // menentukan banyak isian love, jika total=0 maka hatinya kosong.
        1..10   : begin 
                    for i:=19 downto 18 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                 end; 
        11..20  : begin 
                    for i:=19 downto 16 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                 end;
        21..30  : begin 
                    for i:=19 downto 14 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                 end;
        31..40  : begin 
                    for i:=19 downto 12 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                 end;
        41..50  : begin
                    for i:=19 downto 10 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                 end;
        51..60  : begin 
                    for i:=19 downto 9 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                 end;
        61..70  : begin 
                    for i:=19 downto 7 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                 end;
        71..80  : begin 
                    for i:=19 downto 5 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                    end;
        81..90  : begin 
                    for i:=19 downto 3 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                 end;
        91..100  : begin    
                    for i:=19 downto 1 do 
                        begin
                            textcolor(RED);
                            gotoxy(40,5+i);writeln(isi[i]);
                            delay(100);
                        end;
                end;
    end;
    textcolor(black);
    gotoxy(43,27);writeln('Kecocokan anda dengan dia sebesar ',total,'%');
    readln; 
end;

procedure home;
var a: array[1..40] of char;
    i:integer;
begin
    a := 'Selamat Datang di Program';
    gotoxy(47,8);
    for i:=1 to 25 do
    begin
        write(a[i]);
        delay(80);
    end;
    delay(600);
    gotoxy(1,11);
    writeln('                            ____.               __     ____  __.__    .___  .___.__                   ');    
    writeln('                           |    |__ __  _______/  |_  |    |/ _|__| __| _/__| _/|__| ____    ____     ');
    writeln('                           |    |  |  \/  ___/\   __\ |      < |  |/ __ |/ __ | |  |/    \  / ___\    ');
    writeln('                       /\__|    |  |  /\___ \  |  |   |    |  \|  / /_/ / /_/ | |  |   |  \/ /_/  >   ');
    writeln('                       \________|____//____  > |__|   |____|__ \__\____ \____ | |__|___|  /\___  /    ');
    writeln('                                           \/                 \/       \/    \/         \//_____/     ');  
    delay(1000);
    gotoxy(46,19);
    a:='Karena hidup suka bercanda...';
    for i:=1 to 30 do
    begin
        write(a[i]);
        delay(50);
    end;
    readln;
end;
procedure credit;
var i:integer;
    a: array[1..100] of char;
begin
    for i := 30 downto 3 do  //menampilkan animasi justkidding
        begin
            gotoxy(1,i);
            writeln('                            ____.               __     ____  __.__    .___  .___.__                   ');
            gotoxy(1,i+1);writeln(' ':119);
        end;
    for i := 30 downto 4 do  
        begin
            gotoxy(1,i);
            writeln('                           |    |__ __  _______/  |_  |    |/ _|__| __| _/__| _/|__| ____    ____     ');
            gotoxy(1,i+1);writeln(' ':119);
        end;
    for i := 30 downto 5 do  
        begin
            gotoxy(1,i);
            writeln('                           |    |  |  \/  ___/\   __\ |      < |  |/ __ |/ __ | |  |/    \  / ___\    ');
            gotoxy(1,i+1);writeln(' ':119);
        end;
    for i := 30 downto 6 do  
        begin

            gotoxy(1,i);
            writeln('                       /\__|    |  |  /\___ \  |  |   |    |  \|  / /_/ / /_/ | |  |   |  \/ /_/  >   ');
            gotoxy(1,i+1);writeln(' ':119);
        end;
    for i := 30 downto 7 do  
        begin
            gotoxy(1,i);
            writeln('                       \________|____//____  > |__|   |____|__ \__\____ \____ | |__|___|  /\___  /    ');
            gotoxy(1,i+1);writeln(' ':119);
        end;
    for i := 30 downto 8 do  
        begin
            gotoxy(1,i);
            writeln('                                           \/                 \/       \/    \/         \//_____/     ');  
            gotoxy(1,i+1);writeln(' ':119);
        end;
    for i:= 30 downto 12 do 
        begin
            gotoxy(1,i);writeln(' ':53,'Disusun oleh : ');
            gotoxy(40,i+1);
            writeln(' ':119);
            delay(10);
        end;
    a:='Cecilia Putri Dianti';
    gotoxy(50,14);
    for i:=1 to 20 do
        begin
            write(a[i]);
            delay(30);
        end;
    a:='Feza Raffa Arnanda';
    gotoxy(51,16);
    for i:=1 to 18 do
        begin
            write(a[i]);
            delay(30);
        end;
    a:='Hamdani';
    gotoxy(56,18);
    for i:=1 to 8 do
        begin
            write(a[i]);
            delay(30);
        end;
    for i:=30 downto 22 do 
        begin
            gotoxy(1,i);writeln(' ':50,'Special thanks to :  ');
            gotoxy(1,i+1);
            writeln(' ':119);
            delay(10);
        end;
    a:='Nucke Widowati Kusumo Projo, S.Si, M.Sc, Ph.D. ';
    gotoxy(37,24);
    for i:=1 to 46 do
        begin
            write(a[i]);
            delay(30);
        end;
    a:='Muhammad Rifky Naratama ';
    gotoxy(48,26);
    for i:=1 to 24 do
        begin
            write(a[i]);
            delay(30);
        end;
end;

begin
    crt.windmaxy:=33;
    textbackground(white);
    textcolor(black);
    clrscr;
    home;
    awal:
    clrscr;
    gotoxy(39,10);writeln('Selamat Datang di Program JustKidding!');
    gotoxy(49,11);writeln('Silahkan pilih menu!');
    gotoxy(45,13);writeln('1. Funfact tentang dirimu');
    gotoxy(45,14);writeln('2. Penghitung Weton');
    gotoxy(45,15);writeln('3. Shio dan Zodiak');
    gotoxy(45,16);writeln('4. Tes kecocokan pasangan');
    gotoxy(45,17);writeln('5. Credit');
    gotoxy(45,18);writeln('6. Exit');
    gotoxy(49,20);write('Pilihanmu  : '); readln(opsi);
    if (opsi>=1) and (opsi<=6) then begin
        case opsi of 
                1 : funfact;
                2 : begin
                        weton;
                        readkey;
                    end;
                3 : begin
                        hitung_shio_zodiak;
                        readkey;
                    end;
                4 : begin
                        Input_Nama;
                        tampilan;
                    end;
                5 : begin
                        credit;
                        readkey;
                    end;
                6 : exit;
            end;
        end
    else begin
            textcolor(red);
            gotoxy(42,22);
            writeln('Input yang anda masukkan tidak sesuai!');readkey;
            textcolor(black);
         END;
    goto awal;
end.