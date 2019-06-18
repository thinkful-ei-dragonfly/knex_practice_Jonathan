require('dotenv').config()
const knex = require('knex')

knexInstance = knex({
  client: 'pg',
  connection: process.env.DB_URL
})

//Query 1
function getItemsThatContainText(searchTerm){

  knexInstance
  .select('*')
  .from('shopping_list')
  .where('name', 'ILIKE', `%${searchTerm}%`)
  .then(res => {
    console.log('SEARCH TERM', { searchTerm })
    console.log(res)
  })
}
getItemsThatContainText('sham')


//Query 2
function getAllItemsPaginated(pageNumber){

  const productsPerPage = 6
  const offset = productsPerPage * (pageNumber -1)

  knexInstance
  .select('*')
  .from('shopping_list')
  .limit(productsPerPage)
  .offset(offset)
  .then(res => {
    console.log('PAGINATE ITEMS', { pageNumber })
    console.log(res)
  })
}
getAllItemsPaginated(2)


//Query 3
function getAllItemsAddedAfterDate(daysAgo){
  knexInstance 
  .select('*') 
  .from('shopping_list') 
  .where( 'date_added', '>', knexInstance.raw(`now() - '?? days'::INTERVAL`, daysAgo) ) 
  .then(res => { 
    console.log('ITEMS ADDED DAYS AGO', { daysAgo })
    console.log(res) 
  }) 
}
getAllItemsAddedAfterDate(10)


//Query 4
function getTotalCostEachCategory(){

  knexInstance
  .select('category')
  .from('shopping_list')
  .groupBy('category')
  .sum('price AS total')
  .then(res => {
    console.log('COST PER CATEGORY')
    console.log(res)
  })
}
getTotalCostEachCategory()

