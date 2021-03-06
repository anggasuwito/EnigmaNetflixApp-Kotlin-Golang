package com.app.fetchretrovit.movie.viewmodel

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.fetchretrovit.config.RetrofitBuilder
import com.app.fetchretrovit.movie.Movie
import com.app.fetchretrovit.movie.services.MovieAPI
import com.app.fetchretrovit.movie.services.MovieRepository

class MovieViewModel : ViewModel() {
    val movieRepository: MovieRepository

    init {
        val movieAPI = RetrofitBuilder.createRetrofit().create(MovieAPI::class.java)
        movieRepository =
            MovieRepository(movieAPI)
    }
val movieess = mutableListOf<Movie>(Movie(),Movie(), Movie(),Movie(),Movie(),Movie(),Movie())
    val movie: LiveData<Movie> = movieRepository.movie
    val allMovie : LiveData<List<Movie>> = movieRepository.movieList
//    val allMovie : MutableLiveData<List<Movie>> = MutableLiveData(movieess)
//    val allMovie : MutableLiveData<List<Movie>> = movieRepository.movieList
    fun getMovie(id: String) {
        movieRepository.getMovie(id)
    }

    fun getAllMovie(){
        movieRepository.getAllMovie()
    }

    fun saveMovie(movie: Movie){
        movieRepository.saveMovie(movie)
    }
}