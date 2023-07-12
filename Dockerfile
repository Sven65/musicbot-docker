FROM eclipse-temurin AS base

WORKDIR /opt/app


RUN wget https://github.com/jagrosh/MusicBot/releases/download/0.3.9/JMusicBot-0.3.9.jar

CMD ["java", "-jar", "/opt/app/JMusicBot-0.3.9.jar"]
