<?php namespace App\Components;

class Navbar {
    public function print() {
        echo "
        <nav>
            <ul>
                <li>Home</li>
                <li>Log in</li>
            </ul>
        </nav>
        ";
    }
}