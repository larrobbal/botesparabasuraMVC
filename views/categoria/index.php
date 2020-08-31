    <h2 class="text-center py-3 catalog-category-title">Nuestros Productos</h1>
    <div class="text-center catalog-subcategory-title">Selecciona la categoría que deseas visitar</div>
    <div class="row flow-offset-1 text-center catalog-content" id="catalog-content">
        <?php while($categoria=$result->fetch_object()):?>
            <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 my-3">
                <div class="product tumbnail thumbnail-3">
                    <a class="catalog-category" id="<?=$categoria->idCategoria?>" href="<?=BASE_URL?>categoria/<?=$categoria->controlador_categoria?>">
                        <img class="img-fluid h-100 rounded catalog-item" src="<?=BASE_URL?>assets/img/catalog/category/<?=$categoria->imagenCategoria?>.jpg" alt="<?=$categoria->nombreCategoria?>">
                    </a>
                    <div class="caption">
                        <span><?=$categoria->nombreCategoria?></span>
                    </div>
                </div>
            </div>
        <?php endwhile;?>
    </div>
</section>