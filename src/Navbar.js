import {Link } from 'react-router-dom';

const Navbar = () => {
    return ( 
        <nav className="navbar">
            <h1>Mon Blog</h1>
            <div className='liens'>
                <Link to="/">Accueil</Link>
                <Link to ="/create">Nouveau Blog</Link>
            </div>
        </nav>
     );
}
 
export default Navbar;