<?php include('db.php') ?>

<?php include('includes/header.php') ?>

<div class="container p-4">

    <div class="row">

        <div class="col-mb-4">

            <?php if(isset($_SESSION['message'])){ ?>
                <div class="alert alert-<?= $_SESSION['message_type']; ?> alert-dismissible fade show" role="alert">
                <?= $_SESSION['message'] ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            <?php session_unset(); } ?>

            <div class="card card-body">
                <form action="save_task.php" method="POST" >
                    <div class="form-group">
                        <input type="text" name="Nombre" class="form-control"
                        placeholder="Agrega nombre del componente"autofocus>
                    </div>
                    <div class="form-group">
                        <input type="text" name="Cantidad" class="form-control" 
                        placeholder="Ingrese una Cantidad">
                    </div>
                    <div class="form-group">
                        <input type="text" name="Codigo" class="form-control"
                        placeholder="Ingrese el Codigo">
                    </div>
                    <div class="form-group">
                        <textarea name="Descripcion" rows="2" class="form-control"
                        placeholder="Ingrese una descripcion"></textarea>
                    </div>
                    <input type="submit" class="btn btn-success btn-block" 
                        name="save_task" value="Save">
                </form>

            </div>

        </div>
        <div class="col-mb-8">


        </div>
    </div>
</div>

<?php include('includes/fooder.php') ?>   