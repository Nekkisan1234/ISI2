<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Modele\Film;

class FilmController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($laCategorie = null)
    {
        $query = $laCategorie ? \App\modele\Categorie::where('id', $laCategorie)->firstOrFail()->films() : Film::query();
        // $lesFilms = Film::all();
        $lesFilms = $query->get();
        $lesCategories = \App\modele\Categorie::all();
        return view('listeFilms', compact('lesFilms', 'lesCategories', 'laCategorie'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Film $film)
    {
        //Appelle la vue afficherFilm
        $libelle = $film->categorie->libelle;
        return view('afficherFilm',compact('film', 'libelle'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Film $film)
    {
        $film->delete();
        return back()->with('info', 'Le film a bien été supprimé dans la base de données.');
    }
}
