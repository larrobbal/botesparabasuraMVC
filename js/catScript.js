/*!
    * Start Bootstrap - Agency v6.0.2 (https://startbootstrap.com/template-overviews/agency)
    * Copyright 2013-2020 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-agency/blob/master/LICENSE)
    */
var GLOBAL_URL = 'http://localhost/botesparabasuraMVC/';
(function ($) {
    "use strict"; // Start of use strict

    // Smooth scrolling using jQuery easing
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function () {
        if (
            location.pathname.replace(/^\//, "") ==
                this.pathname.replace(/^\//, "") &&
            location.hostname == this.hostname
        ) {
            var target = $(this.hash);
            target = target.length
                ? target
                : $("[name=" + this.hash.slice(1) + "]");
            if (target.length) {
                $("html, body").animate(
                    {
                        scrollTop: target.offset().top - 72,
                    },
                    1000,
                    "easeInOutExpo"
                );
                return false;
            }
        }
    });

    // Closes responsive menu when a scroll trigger link is clicked
    $(".js-scroll-trigger").click(function () {
        $(".navbar-collapse").collapse("hide");
    });

    // Activate scrollspy to add active class to navbar items on scroll
    $("body").scrollspy({
        target: "#catalogNav",
        offset: 74,
    });

    // Collapse Navbar
    var navbarCollapse = function () {
        if ($("#catalogNav").offset().top > 100) {
            $("#catalogNav").addClass("navbar-shrink");
        } else {
            $("#catalogNav").removeClass("navbar-shrink");
        }
    };
    // Collapse now if page is not at top
    navbarCollapse();
    // Collapse the navbar when page is scrolled
    $(window).scroll(navbarCollapse);
    
    //Sidebar overlay
    $(document).ready(function () {
        $("#sidebar").mCustomScrollbar({
            theme: "minimal"
        });

        $('#dismiss, .overlay').on('click', function () {
            // hide sidebar
            $('#sidebar').removeClass('active');
            // hide overlay
            $('.overlay').removeClass('active');
            /*//show navbar
            $('#catalogNav').removeClass('zindex-dropdown');*/
        });

        $('#sidebarCollapse').on('click', function () {
            // open sidebar
            $('#sidebar').addClass('active');
            /*//hide navbar
            $('#catalogNav').addClass('zindex-dropdown');*/
            // fade in the overlay
            $('.overlay').addClass('active');
            $('.collapse.in').toggleClass('in');
            $('a[aria-expanded=true]').attr('aria-expanded', 'false');
        });
    });
})(jQuery);// End of use strict

function navbarLoad() {
    var xhr = new XMLHttpRequest();
    var sidebar = document.getElementById('sidebar-options');
    var myObj;
    var data={};var data2={};
    var txt="";
    data['cat']=true;
    var json_string = JSON.stringify(data);
    xhr.open('POST',"assets/php/productos.php",true);
    xhr.setRequestHeader("Content-type","application/json");
    xhr.send(json_string);

    xhr.onreadystatechange = function()
    {
        if(this.readyState == 4 && this.status == 200)
        {
            myObj = JSON.parse(this.responseText);
            myObj.forEach(element => 
            {
                var listCategorySidebar = document.createElement('li');
                listCategorySidebar.setAttribute('class','d-inline');
                var aCategory = document.createElement('a');
                var listSubcategorySidebar = document.createElement('ul');
                aCategory.setAttribute('data-toggle','collapse');
                aCategory.setAttribute('aria-expanded','false');
                aCategory.setAttribute('href','#cat'+element.idCategoria);
                aCategory.innerHTML=element.nombreCategoria;
                listCategorySidebar.appendChild(aCategory);
                listSubcategorySidebar.setAttribute('class','collapse list-unstyled');
                listSubcategorySidebar.setAttribute('id','cat'+element.idCategoria);

                data2['idCategoria']=element.idCategoria;
                var json_string = JSON.stringify(data2);
                console.log(json_string);
                xhr.open('POST',"assets/php/productos.php",true);
                xhr.setRequestHeader("Content-type","application/json");
                xhr.send(json_string);
                xhr.onreadystatechange = function()
                {
                    if(this.readyState == 4 && this.status == 200)
                    {
                        myObj = JSON.parse(this.responseText);
                        myObj.forEach(element2 => 
                        {
                            var subcategory = document.createElement('li');
                            subcategory.innerHTML='<a class="catalog-subcategory" id="'+element2.idSubcategoria+'" href='+GLOBAL_URL+'subcategoria/'+element2.controlador_subcategoria+'>'+element2.nombreSubcategoria+'</a>';
                            listSubcategorySidebar.appendChild(subcategory);
                        });
                    }
                }
                listCategorySidebar.appendChild(listSubcategorySidebar);
                sidebar.appendChild(listCategorySidebar);
            });
        }
    }
}

function showModal(idproducto,name)
{
    var heading = ['Descripcion:','Linea:','Acabado:','Material:','Calibre:','Capacidad:','Colores:','Anclaje:','Vaciado:','Largo Total:','Ancho Total:','Alto Total:','Diametro Principal:','Largo (Contenedor):','Ancho (Contenedor):','Alto (Contenedor):','Diametro (Contenedor):','Largo (Letrero):','Alto (Letrero):','Adicional:'];
    var modalTitle = document.getElementById('modal-product-title');
    modalTitle.innerHTML=name;
    console.log(modalTitle);
    var modalBody = $('#row-modal');
    var aux="";
    var cont=0;
    $.ajax({
        data: {"idProducto" : idproducto},
        type: "POST",
        dataType: "json",
        url: GLOBAL_URL+"assets/php/productos.php",
    })
     .done(function( data, textStatus, jqXHR ) {
        if(data==null)
            modalBody.empty();
        data.forEach(element => 
        {
            modalBody.empty();
            var tablaModal = document.createElement('table');
            tablaModal.setAttribute('class','table-modal-product')
            var tablaBody = document.createElement('tbody');
            tablaBody.setAttribute('class','align-baseline');
            var divImg = document.createElement('div');
            var divInfo = document.createElement('div');
            divImg.setAttribute('class','col-md-5')
            divImg.setAttribute('id','image-modal-product');
            divInfo.setAttribute('class','col-md-7');
            divInfo.setAttribute('id','info-modal-product');
            divImg.innerHTML='<img class="img-fluid w-100 rounded" src="'+GLOBAL_URL+'assets/img/catalog/product/'+element.imagen+'.jpg" alt="'+name+'">';
            for(var i in element)
            {
                if(i!='imagen')
                {
                    if(element[i]!='')
                    {
                        if(i=='capacidad')
                        {
                            aux=aux+'<tr><td>'+heading[cont]+'</td><td>'+element[i]+' LT</td></tr><tr><td>';
                        }
                        else if((i.includes('alto')||i.includes('ancho')||i.includes('largo')||i.includes('diametro'))&&element[i]!='')
                        {
                            aux=aux+'<tr><td>'+heading[cont]+'</td><td>'+element[i]+' cm</td></tr><tr><td>';
                        }
                        else
                            aux=aux+'<tr><td>'+heading[cont]+'</td><td>'+element[i]+'</td></tr><tr><td>';
                    }
                    cont+=1;
                }
            }
            tablaBody.innerHTML=aux;
            tablaModal.appendChild(tablaBody);
            divInfo.appendChild(tablaModal);
            var rowModal = document.getElementById('row-modal');
            rowModal.appendChild(divImg);
            rowModal.appendChild(divInfo);

        });
     })
     .fail(function( jqXHR, textStatus, errorThrown ) {
         if ( console && console.log ) {
             console.log( "La solicitud a fallado: " +  textStatus + errorThrown);
         }
    });
}