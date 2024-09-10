# Capítulo 4: “Lightning Node Software”
## Material Principal

Para esta sesión debes haber leído el Capítulo 4: “Lightning Node Software” del Libro Mastering Lightning.

Esta es una sesión en su mayor parte práctica en donde van a resolver en equipo unos ejercicios propuestos similares a los que están en el final del capítulo 4: Tutoriales para instalar nodos de Bitcoin.

> ⚠️ Importante: Los términos técnicos siempre se dirán en inglés para facilitar el aprendizaje del idioma y la inmersión en el desarrollo de software de Bitcoin y LN. [Ver metodología de traducción](https://docs.google.com/document/d/1uPy771hf2xUElcaOR_Sk9NTqODeg9QZENYWL9leQc1g/edit?usp=sharing).

## Lecturas complementarias
- [‍Línea de comandos básica (10 min.)](https://www.youtube.com/watch?v=BZN7Tqeu8eA)
- ‍[Tutorial de dockers básico (20 min.)](https://youtu.be/12GnSq2T_ZQ)
- [Tutorial de dockers práctico (30 min.)](https://youtu.be/chb5d5VKkA4)

## Preguntas
> 🛑 Antes de resolver las preguntas del capítulo, revisa las instrucciones de trabajo de la sesión [aquí](https://www.libreriadesatoshi.com/private-mln/lightning-welcome-page)

- Why was Segwit an essential upgrade to the base layer for Lightning?
- Is using docker containers the best way to have a node in the lightning network?
- Is it better to use testnet or regtest for testing in Lightning Network?
- Among the three most popular lightning network implementations, which one do you think is the best, and why?

### Ejercicio práctico

Para realizar los ejercicios a continuación debes haber instalado docker compose como explican en el capítulo 4 (REVISAR, esto creo que ya no se hace así ahora es ~docker compose up~), de acuerdo al ejemplo que hay al final de ese capítulo en el título “Building a Complete Network of Diverse Lightning Nodes”.

Debes seguir las instrucciones en donde te muestran cómo ir a la carpeta lnbook/code/docker y lanzar el ejercicio con el comando docker_compose up:
```bash
cd lnbook/code/docker
//docker-compose up
docker compose up   
```
Cuando ya se queden ejecutando los nodos en esa consola, abre otra consola de comandos y ejecuta el script.
```bash
./run_payment_demo.sh 
```
Este script crea esta topología abriendo canales de Alice ⇾ Bob de Bob ⇾ Chan y Chan ⇾ Dina, todos con 1.000.000 (un millón de satoshis)


![Imagen 1. Apertura de canales Alice-Bob, Bob-Chan, Chan-Dina](https://github.com/user-attachments/assets/3b87f359-4696-4582-a165-88bf9ddfc94f)

Y al final, en ese mismo script, Dina crea un invoice de 10K que es pagado por Alice.

### Expected submissions

Every question must be answered by providing a bash script that executes bitcoin-cli commands. No other commands should be necessary besides bash operators (for loops, if/else logic, etc) and jq, which is a JSON parsing command you may need to manually install on your system. HINT: You can check some useful jq examples.

Each student will get a private fork of this repository when they join the GitHub Classroom assignment. You will commit and push your submissions to GitHub which will evaluate the answers automatically. You can commit and push as often as you like and GitHub will re-evaluate your code every time.

There are empty template files for each script in the submission directory in this repository. You MUST write your scripts into these files for the autograder to work properly. Do NOT rename the script files!

Answer as many as you can. Some are easy, some are very hard!

Exercises:
- [001.sh](/submission/001.sh) Actualiza los balances del diagrama después de que Alice hace el pago (3 puntos)
- [002.sh](/submission/002.sh) Dina debe generar un nuevo invoice de 20K que debe ser pagado por Bob.
- [003.sh](/submission/003.sh) Para probar que hiciste el pago toma un pantallazo de la preimagen (4 puntos)
- [004.sh](/submission/004.sh) Abrir un canal de Dina a Alice de 500.000 satoshis.
- [005.sh](/submission/005.sh) Para probar que abriste el canal, toma un pantallazo del comando listchannels desde el nodo de Dina (4 puntos)
