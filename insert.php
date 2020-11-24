<?php

    $adminemail = "naoufelbenmensour@gmail.com";

    $connect = mysqli_connect("localhost", "root", "", "food");
		if(isset($_POST['submit'])){
			$nom = $_POST['fname'];
			$prenom = $_POST['lname'];
			$email = $_POST['email'];
            $tele = $_POST['phone'];
            $addrss = $_POST['addrss'];
            $id_plat = $_POST['plat_id'];

			$sql = "INSERT INTO reservation (nom, prenom, email, numero_telephone, addrss, id_plat) VALUES ('$nom', '$prenom', '$email', '$tele', '$addrss', '$id_plat')";
			// if(mysqli_query($connect, $sql)){
            //     echo "<script type='text/javascript'> alert('Résérvation Confirmée')</script>";
            //     header('location:index.php');
			// }else{
			// 	echo "<script type='text/javascript'> alert('il ya un probleme')</script>";
            // }
            $query = $connect->prepare($sql);
            $query->bind_param(':fname', $nom, PDO::PARAM_STR);
            $query->bind_param(':lname', $prenom, PDO::PARAM_STR);
            $query->bind_param(':email', $email, PDO::PARAM_STR);
            $query->bind_param(':phone', $tele, PDO::PARAM_STR);
            $query->bind_param(':addrss', $addrss, PDO::PARAM_STR);
            $query->bind_param(':plat_id', $id_plat, PDO::PARAM_STR);
            $query->execute();
            $lastInsertId = $connect->lastInsertId();
            if($lastInsertId){
                //mail function for sending mail
                $to=$email.",".$adminemail; 
                $headers .= "MIME-Version: 1.0"."\r\n";
                $headers .= 'Content-type: text/html; charset=iso-8859-1'."\r\n";
                $headers .= 'From:Testing Email Validation <info@gmail.com>'."\r\n";
                $ms.="<html></body><div>
                <div><b>Nom:</b> $nom,</div>
                <div><b>Prenom:</b> $prenom,</div>
                <div><b>Numero de telephone:</b> $tele,</div>
                <div><b>Address:</b> $addrss,</div>
                <div><b>Email Id:</b> $email,</div>";
                $ms.="<div style='padding-top:8px;'><b>Message : </b>$id_plat</div><div></div></body></html>";
                mail($to,$email,$ms,$headers);
                
                
                
                
                echo "<script>alert('Votre Demande a ete Envoyée.');</script>";
                }
                else 
                {
                echo "<script>alert('Erreur');</script>";
                }
        }
?>