import { useHistory, useParams } from "react-router-dom";
import useFetch from "./useFetch";

const BlogDetail = () => {
    const { id } = useParams();
    const { data: blog, error, isPending} = useFetch('http://localhost:3000/blogs/' + id);
    const history = useHistory();
    
    const handleClick = () =>{
         fetch('http://localhost:3000/blogs/' + blog.id, {
             method: "DELETE"
         }).then(() =>{
            history.push('/')
         })
    }
    return ( 
        <div className = 'blog-detail'>
                { isPending && <div>loading...</div> }
                { error && <div>{ error}</div>}
                { blog &&(
                    <article>
                        <h2>{blog.title}</h2>
                        <hr></hr>
                        <p>Ecrit par {blog.author}</p>
                        <div>{blog.body}</div>
                        <button onClick={ handleClick }>Supprimer</button> 
                    </article>
                )}
        </div>
     );
}
 
export default BlogDetail;