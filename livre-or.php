    <!-- header des pages -->
    <?php
        include 'header.php';
        include 'connect.php';
    ?>

    <!-- contenu de la page -->
    <main>
        <?php
            // requête pour récupérer tout ce qu'il y a dans la base de données commentaires, ainsi que le login dans la base de donnée utilisateurs correspondant à l'id_utilisateurs de la base de données commentaires
            $requete = "SELECT commentaires.commentaire, DATE_FORMAT(commentaires.date, '%d/%m/%Y') as date, utilisateurs.login FROM commentaires INNER JOIN utilisateurs ON commentaires.id_utilisateur = utilisateurs.id ORDER BY date DESC";

            // exécution de la requête
            $exec_requete = $connect -> query($requete);
            
        ?>

        <div class="container_livre-or">
            <h1>Livre d'or</h1>
            <div class="container_commentaires">
                <table>
                    <thead>
                        <tr>
                            <th>Posté le :</th>
                            <th>Par l'utilisateur :</th>
                            <th>Commentaires</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            // affichage des commentaires
                            while ($reponse = mysqli_fetch_assoc($exec_requete)){
                                echo "<tr>";
                                echo "<td>".$reponse['date']."</td>";
                                echo "<td>".$reponse['login']."</td>";
                                echo "<td>".$reponse['commentaire']."</td>";
                                echo "</tr>";
                            }
                        ?>
                    </tbody>
                </table>
            </div>

            <!-- formulaire pour poster un commentaire -->
            <?php
                if (isset($_SESSION['loginOK'])){
                    if ($_SESSION['loginOK']){

            ?>
                <a href='commentaire.php'><button>Laisser un commentaire</button></a>
            <?php
                    }
                }
            ?>

    </main>

    <!-- footer des pages -->
    <?php
        include 'footer.php';
    ?>
</body>
</html>