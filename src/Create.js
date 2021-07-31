import { useState } from "react";
import { useHistory } from "react-router";

const Create = () => {
   const [title, setTitle] = useState('');
   const [body, setBody] = useState('');
   const [ author, setAuthor] = useState('Marcel');
   const [ isPending, setIsPending ] = useState(false);
   const history = useHistory();

   const handleSubmit = (e) => {
        e.preventDefault();
        const blog = {title, body, author};

        setIsPending(true);

        fetch('http://localhost:3000/blogs' , {
        method: 'POST',
        headers: {"Content-type": "application/json"},
        body: JSON.stringify(blog) 
      }).then(() => {
         console.log('un nouveau blog est ajouter')
         setIsPending(false);
         //history.go(-1);
          history.push('/');
      });

      }
  
   return (
       <div className = 'create'>
           <h2>Ajouter un nouveau blog</h2>
           <form onSubmit={ handleSubmit }>
               <label>Titre du blog</label>
               <input type='text' value={title} 
                       onChange={(e) => setTitle(e.target.value)} required />
               <label>Corp du blog</label>
               <textarea required value={body}
                         onChange={(e) =>setBody(e.target.value)}></textarea>
               <label>Auteur du blog</label>
               <select value={author} onChange={(e) => setAuthor(e.target.value)}>
                   <option value="Marcel">Marcel</option>
                   <option value="Maimouna">Maimouna</option>
                   <option value="Shérif">Shérif</option>
               </select>
               {!isPending && <button>Ajout blog</button>}
               {isPending && <button disabled>Entrain de Bloger...</button>}
               {/*<p>{ title }</p>
               <p> { body }</p>
               <p> { author } </p>*/}
           </form>
       </div>
   );
}
export default Create;