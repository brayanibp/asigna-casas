<?php namespace App\Views;
// include '../components/Navbar.php';
use App\Components\Navbar;

class Home
{
    public static function print() {
        $navar = Navbar::print();
        $header = '
        <header class="header">
            <div class="welcome">
                <span>¡Bienvenido!</span>
            </div>
        </header>
        ';
        return $navar . $header;
    }
}