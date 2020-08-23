package com.app.fetchretrovit.movie.services

import com.app.fetchretrovit.movie.Movie
import retrofit2.Call
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Path

interface MovieAPI {
    @GET("movies")
    fun getAllMovie():Call<List<Movie>>

    @GET("movie/{id}")
    fun getMovieById(@Path("id")id:String): Call<Movie>

    @POST("movie")
    fun createMovie(@Body movie: Movie):Call<Movie>
}