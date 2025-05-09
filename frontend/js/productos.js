const {createApp} = Vue;

createApp({
    data(){
        return{
            productos: [],
            url: 'http://localhost:5000/productos',
            cargando: true,
            error: false
        }
    },
    methods:{
        fetchApi(url){
            fetch(url)
            .then(res => res.json())
            .then(data =>{
                this.productos = data;
                this.cargando = false;
            }).catch(err =>{
                console.error(err);
                this.error = true;
            })
        },
        eliminar(id){
            const url = this.url+"/"+id;
            let options={
                method: 'DELETE'
            }

            fetch(url, options)
            .then(res=> res.json())
            .then(data => {
                alert("Producto  Eliminado Exitosamente");
                location.reload();
            }).catch(err => console.error(err))
        }
    },
    components: {
        "navegacion":{
          template: '<nav class="navbar navbar-expand-sm navbar-light bg-light"> <div class="container"> <a class="navbar-brand" href="index.html"><img class="loguito" src="./img/logo-fix.png"></a> <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button> <div class="collapse navbar-collapse" id="collapsibleNavId"> <ul class="navbar-nav me-auto mt-2 mt-lg-0"> <li class="nav-item"> <a class="nav-link active" href="index.html" aria-current="page">Home <span class="visually-hidden">(current)</span></a> </li> <li class="nav-item"> <a class="nav-link active" href="catalogo.html" aria-current="page">Catalogo <span class="visually-hidden">(current)</span></a> </li> <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin</a> <div class="dropdown-menu" aria-labelledby="dropdownId"> <a class="dropdown-item" href="productos.html">Productos</a> <a class="dropdown-item" href="log_delete.html">Log</a> </div> </li> </ul> <form class="d-flex my-2 my-lg-0"> <input class="form-control me-sm-2" type="text" placeholder="Buscar..."> <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button> </form> </div> </div> </nav>'
      },
      "piesito":{
        template:' <footer> <section class="piesito"> <p> <i class="fa-solid fa-copyright"></i> Copyright</p> <h5>Desarrollado por el Grupo 6</h5> <p>Para Codo a Codo - Python Full Stack</p> </section> </footer>'
      }
  } ,
    created(){
        this.fetchApi(this.url);
    }
}).mount('#app')
