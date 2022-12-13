const url = "http://localhost:3000/api/VACANTE/";
let resultados = '';
const  formArticulo = document.querySelector("form");
const NOMEST = document.getElementById("NOMEST");
const DNIEST = document.getElementById("DNIEST");
const EMAEST = document.getElementById("EMAMPA");
const CELEST = document.getElementById("CELMPA");
const MSGEST = document.getElementById("MSGEST");
var opcion = '';

btnCrear.addEventListener('click', () => {
    console.log("Acción de listar activada");
    opcion = 'crear';
});

formArticulo.addEventListener('submit',
    (e) => {
   	 e.preventDefault();
   	 if (opcion == 'crear') {
   		 if (NOMEST.value =='' || DNIEST.value =='' || EMAEST.value =='' ||  CELEST.value =='' || MSGEST.value =='') 
		 {
       		 alert("Asegúrese de que todos los campos estén completos");
       		 return false;
   		 } else {
       		 console.log("Todos los campos están completos");
       		 fetch(
           		 url,
           		 {
               		 method: 'POST',
               		 headers: {
                   		 'content-Type':'application/json'
               		 },
               		 body: JSON.stringify(
                   		 {
							 NOMEST: NOMEST.value,
							 DNIEST: DNIEST.value, 
							 EMAEST: EMAMPA.value,   
							 CELEST: CELMPA.value,
							 MSGEST: MSGEST.value,
                   		 }
               		 )
           		 }
       		 )
       		 .then(
           		 response => response.json()
       		 )
       		 .then(
           		 response => location.reload()
       		 );
   		 }
   	 } else if(opcion == 'editar'){
   		 console.log("Activado el ");
   	 }
    }
);

