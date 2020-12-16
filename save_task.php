<?php

    include('db.php');

    if(isset($_POST['save_task'])){
        $Nombre = $_POST['Nombre'];
        $Cantidad = $_POST['Cantidad'];
        $Codigo = $_POST['Codigo'];
        $Descripcion = $_POST['Descripcion'];

        $query = "INSERT INTO componentes(Nombre, Cantidad, Codigo, Descripcion) VALUES ('$Nombre', '$Cantidad', '$Codigo', '$Descripcion')";  
        $resultado = mysqli_query($conn, $query);
        if(!$resultado){
            die("Query Faild");
        }

        $_SESSION['message'] = 'Guardado';
        $_SESSION['message_type'] = 'dark';

        header('Location: index.php');
    }

?>