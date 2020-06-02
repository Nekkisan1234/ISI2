@extends('template')

@section('titrePage')
    Liste des Films
@endsection

@section('titreItem')
    <h1>Films :</h1>
    <select onchange="window.location.href = this.value">
        <option value="{{ route('films.index') }}">Tous les films</option>
        @foreach($lesCategories as $categorie)
            <option value="{{ route('films.categorie', $categorie->id) }}" {{ $laCategorie == $categorie->id ? 'selected' : '' }}>{{ $categorie->libelle }}</option>
        @endforeach
    </select>
@endsection

@section('contenu')

    @if(session()->has('info'))
        <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
            <div class="card-body">
                <p class="card-text">{{ session('info') }}</p>
            </div>
        </div>
    @endif

    <div class="card">
        <div class="card-content">
            <div class="content">
                <table id="display_table" class="table is-hoverable">
                    <thead>
                    <tr>
                        <th>Titre</th>
                        <th>Annee Sortie</th>
                        <th>Description</th>
                    </tr>
                    </thead>
                    @foreach($lesFilms as $film)
                        <tr>
                            <td><strong>{{ $film->titre }}</strong>  </td>
                            <td> {{ $film->anneeSortie }}</td>
                            <td><a class="btn btn-primary" href="{{ route('films.show', $film->id) }}">Voir</a></td>
                            <td>
                                <form action="{{ route('films.destroy', $film->id) }}" method="post">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger" type="submit">Supprimer</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
@endsection
