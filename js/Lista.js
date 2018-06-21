// console.log("Pagina Lista")

// JSON (è un oggetto Javascript che permette l'interscambio dati, cioè che viene letto anche da formati diversi da js)

var SERVICE_URL = "https://jsonplaceholder.typicode.com"
var Person = {
    "name": "Pippo",
    "age": 37,
    "children": [{
            "name": "Ginetto",
            "age": 5
        },
        {
            "name": "Pipino",
            "age": 3
        }
    ],
    "partner": {
        "name": "Barbara",
        "age": 28
    }
}

console.log(Person.name, Person.children[0].name)