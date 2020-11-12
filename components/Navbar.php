<?php namespace App\Components;

class Navbar 
{
    public function print()
    {
        return "
        <nav>
            <ul>
                <li>Home</li>
                <li>Log in</li>
            </ul>
        </nav>
        ";
    }
}