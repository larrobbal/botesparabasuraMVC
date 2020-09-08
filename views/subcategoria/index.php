    <h2 class="text-center py-3 catalog-category-title"><?php $_SESSION['nombreCategoria'];?></h2>
    <div class="text-center catalog-subcategory-title">Selecciona la linea de productos que deseas visitar</div>
    <div class="row flow-offset-1 text-center catalog-content" id="catalog-content">
        <?php while($subcategoria=$result->fetch_object()):?>
            <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 my-3">
                <div class="product tumbnail thumbnail-3">
                    <a class="catalog-category" id="<?=$subcategoria->idCategoria?>" href="<?=BASE_URL?>subcategoria/<?=$subcategoria->controlador_subcategoria?>">
                        <img class="img-fluid h-100 rounded catalog-item" src="<?=BASE_URL?>assets/img/catalog/subcategory/<?=$subcategoria->imagenSubcategoria?>.jpg" alt="<?=$subcategoria->nombreSubcategoria?>">
                    </a>
                    <div class="caption">
                        <span><?=$subcategoria->nombreSubcategoria?></span>
                    </div>
                </div>
            </div>
        <?php endwhile;?>
    </div>
</section>