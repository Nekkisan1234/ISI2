<?php

namespace App\modele;

use Illuminate\Database\Eloquent\Model;

class Film extends Model
{
    protected $fillable = ['titre', 'anneeSortie', 'description', 'id_categorie'];

    public function categorie() {
        return $this->belongsTo(Categorie::class, 'id_categorie');
    }
}
