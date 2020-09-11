    <h2 class="text-center py-3 catalog-category-title"></h2>
    <div class="text-center catalog-subcategory-title">Selecciona el producto que deseas conocer</div>
    <div class="row flow-offset-1 text-center catalog-content" id="catalog-content">
        <?php while($producto=$result->fetch_object()):?>
            <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 my-3">
                <div class="product tumbnail thumbnail-3">
                    <a class="catalog-category" id="<?=$producto->idProducto?>" href="#" onclick="showModal('<?=$producto->idProducto?>','<?=$producto->nombreProducto?>');" data-toggle="modal" data-target="#modal-product">
                        <img class="img-fluid h-100 rounded catalog-item" src="<?=BASE_URL?>assets/img/catalog/product/<?=$producto->imagenProducto?>.jpg" alt="<?=$producto->nombreProducto?>">
                    </a>
                    <div class="caption">
                        <span><?=$producto->nombreProducto?></span>
                    </div>
                </div>
            </div>
        <?php endwhile;?>
    </div>
    <!--Modal Template-->
    <div class="modal fade" id="modal-product" tabindex="-1" role="dialog" aria-labelledby="modal-product-template" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modal-product-title"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="modal-product-body">
                    <div class="container-fluid" id="container-modal">
                        <div class="row" id="row-modal">
                        </div>
                </div>
            </div>
            <div class="modal-footer">
                <p class="p-1">Contacto:</p>
                <p class="p-1 align-items-center d-flex">
                    <span class="fa-stack fa-1x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-phone fa-stack-1x fa-inverse"></i>
                    </span>
                    <a class="ml-3" href="tel:+525546029795">(55)4602 9795</a>
                </p>
                <p class="p-1 align-items-center d-flex">
                    <span class="fa-stack fa-1x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-envelope fa-stack-1x fa-inverse"></i>
                    </span>
                    <a class="ml-3" href="mailto:ventas@botesparabasura.com" style="font-size: 16px;">ventas@botesparabasura.com</a>
                </p>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</section>