import discord
from discord.ext import commands, tasks
import mysql.connector
import random
import os

bot = commands.Bot(command_prefix='!', intents=discord.Intents.all())

@bot.event
async def on_ready():
    print('Bot is ready.', bot.user.name, bot.user.id)
    # Commence la tâche en arrière-plan
    send_random_message.start()  


@tasks.loop(minutes=5)  # Définissez l'intervalle de temps que vous voulez ici
async def send_random_message():
    conn = mysql.connector.connect(
        host= os.getenv('HOST'),
        user='root',
        password='toto',
        database='tips_programmations'
    )  # Crée une connexion à la base de données

    # Affiche un message dans la console si la connexion est réussie
    print('Connected to MySQL database')  

    # Crée un curseur
    c = conn.cursor()  

    # Récupère les noms de toutes les colonnes de la table
    c.execute("SHOW COLUMNS FROM `t_c#`")  

    # Crée une liste avec les noms des colonnes
    columns = [column[0] for column in c.fetchall()]  

    if "id_C#" in columns:
        columns.remove("id_C#")

    # Choisis une colonne aléatoire
    random_column = random.choice(columns)  

    print(f"Random column: {random_column}")

    # Sélectionne tous les messages de la colonne aléatoire
    c.execute(f"SELECT `{random_column}` FROM `t_c#`")  

 
    print(f"SQL query: {c}")  

    # Récupère tous les résultats de la requête
    messages = c.fetchall()  
    messages = [message for message in messages if message[0]]  # Filtre les messages None

    print(messages)  

    conn.close()  # Ferme la connexion

    if messages:  # Vérifie si messages n'est pas vide
        random_message = random.choice(messages)[0]  # Choisis un message aléatoire

        if random_message:
            for guild in bot.guilds:
                for channel in guild.text_channels:
                    if channel.permissions_for(guild.me).send_messages:
                        await channel.send(random_message)  # Envoie le message aléatoire
                        break

if __name__ == "__main__":
    bot.run(os.getenv('TOKEN'))