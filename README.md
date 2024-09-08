# Capítulo 4: “Lightning Node Software”
## Material Principal

Para esta sesión debes haber leído el Capítulo 4: “Lightning Node Software” del Libro Mastering Lightning.

Esta es una sesión en su mayor parte práctica en donde van a resolver en equipo unos ejercicios propuestos similares a los que están en el final del capítulo 4: Tutoriales para instalar nodos de Bitcoin.

⚠️ Importante: Los términos técnicos siempre se dirán en inglés para facilitar el aprendizaje del idioma y la inmersión en el desarrollo de software de Bitcoin y LN. Ver metodología de traducción.
Lecturas complementarias

[‍Línea de comandos básica (10 min.)](https://www.youtube.com/watch?v=BZN7Tqeu8eA)

‍[Tutorial de dockers básico (20 min.)](https://youtu.be/12GnSq2T_ZQ)

[Tutorial de dockers práctico (30 min.)](https://youtu.be/chb5d5VKkA4)

## Preguntas
🛑 Antes de resolver las preguntas del capítulo, revisa las instrucciones de trabajo de la sesión
aquí

- Why was Segwit an essential upgrade to the base layer for Lightning?
- Is using docker containers the best way to have a node in the lightning network?
- Is it better to use testnet or regtest for testing in Lightning Network?
- Among the three most popular lightning network implementations, which one do you think is the best, and why?

### Práctica

Para realizar los ejercicios a continuación debes haber instalado docker-compose como explican en el capítulo 4, de acuerdo al ejemplo que hay al final de ese capítulo en el título “Building a Complete Network of Diverse Lightning Nodes”

Debes seguir las instrucciones en donde te muestran cómo ir a la carpeta lnbook/code/docker y lanzar el ejercicio con el comando docker_compose up:
```
cd lnbook/code/docker
//docker-compose up
docker compose up   
```
Cuando ya se queden ejecutando los nodos en esa consola, abre otra consola de comandos y ejecuta el script.
```
./run_payment_demo.sh 
```
Este script crea esta topología abriendo canales de Alice ⇾ Bob de Bob ⇾ Chan y Chan ⇾ Dina, todos con 1.000.000 (un millón de satoshis)


![Imagen 1. Apertura de canales Alice-Bob, Bob-Chan, Chan-Dina](https://github.com/user-attachments/assets/3b87f359-4696-4582-a165-88bf9ddfc94f)

Y al final, en ese mismo script, Dina crea un invoice de 10K que es pagado por Alice.

### Ejercicios
- Actualiza los balances del diagrama después de que Alice hace el pago (3 puntos)
- Dina debe generar un nuevo invoice de 20K que debe ser pagado por Bob.
- Para probar que hiciste el pago toma un pantallazo de la preimagen (4 puntos)
- Abrir un canal de Dina a Alice de 500.000 satoshis.
- Para probar que abriste el canal, toma un pantallazo del comando listchannels desde el nodo de Dina (4 puntos)
