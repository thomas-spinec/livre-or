    <!-- header des pages -->
    <?php
        include 'header.php';
        include 'connect.php';
        if (!$_SESSION['loginOK']){
            header('Location: connexion.php');
        }
        // variables de session
        $login = $_SESSION['login'];
        $id = $_SESSION['id'];
    ?>

    <!-- contenu de la page -->
    <main>
        <div class="container">
            <div class="background_form">
                <h1>Laissez un commentaire</h1>
                <form action="" method="post">
                    <label for="commentaire">Commentaire :</label>
                    <textarea name="commentaire" id="commentaire" cols="30" rows="10"></textarea>
                    <br>
                    <input type="submit" value="Envoyer">
                </form>
            </div>
        </div>
    </main>

    <?php
        if(isset($_POST['commentaire'])){
            $commentaire = mysqli_real_escape_string($connect,htmlspecialchars($_POST['commentaire']));
            $date = date("y/m/j"); 
            $requete = "INSERT INTO commentaires (commentaire, id_utilisateur, date) VALUES ('".$commentaire."', '".$id."', '".$date."')";
            $exec_requete = $connect -> query($requete);
            header('Location: livre-or.php');
        }
    ?>


    <!-- footer des pages -->
    <?php
        include 'footer.php';
    ?>
</body>
</html>
