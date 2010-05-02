import com.sample.*

class BootStrap {

     def init = { servletContext ->
       (new Book(name:'Hamlet', authorName:'Shakespeare')).save()
       (new Book(name:'War and Peace', authorName:'Tolstoy')).save()
       

     }

     def destroy = {
     }
} 