import { Link } from "react-router-dom";

const NotFound = () => {
    return ( 
        <div className="not-found">
            <h2>Désolé</h2>
            <p>Cette page ne peut pas être retrouvé</p>
            <Link to='/'>retourne à la page d'accueil...</Link>
        </div>
     );
}
 
export default NotFound;