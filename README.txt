NaturalTreeCutter - Source bundle
================================

Ce e în acest pachet:
 - src/main/java/me/godd/treecut/NaturalTreeCutter.java  (sursa pluginului)
 - plugin.yml
 - config/config.yml (configul original furnizat de tine)
 - build.gradle, settings.gradle (proiect Gradle, folosește Java 17 și Paper API)
 - README (acesta)

Compilare (folosind Gradle):
1. Asigură-te că ai JDK 17 sau mai nou instalat.
2. În directorul proiectului (unde se află build.gradle), rulează:
   ./gradlew shadowJar   (pe Windows: gradlew.bat shadowJar)
3. Dacă totul e ok, vei găsi jar-ul în: build/libs/NaturalTreeCutter-1.0.0.jar
4. Pune acel jar în folderul plugins/ al serverului tău Paper/Spigot 1.21.4 și pornește serverul.

Notă: dependența `io.papermc.paper:paper-api:1.21.4-R0.1-SNAPSHOT` este folosită ca `compileOnly`. Gradle va descărca API-ul de la repo-ul PaperMC când construiește. Dacă ai probleme cu versiunea API, ajustează numărul versiunii la cea pe care o folosești.

Dacă vrei, pot încerca să compilez eu în mediu, dar mediul meu nu garantează disponibilitatea unui compilator Java; totuși ți-am pus tot ce trebuie pentru a compila local.