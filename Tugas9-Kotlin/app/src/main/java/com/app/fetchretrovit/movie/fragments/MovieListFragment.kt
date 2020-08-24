package com.app.fetchretrovit.movie.fragments

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.Toast
import androidx.fragment.app.activityViewModels
import androidx.lifecycle.Observer
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.StaggeredGridLayoutManager
import com.app.fetchretrovit.R
import com.app.fetchretrovit.movie.recycleview.MovieRecycleView
import com.app.fetchretrovit.movie.viewmodel.MovieViewModel
import com.squareup.picasso.Picasso
import kotlinx.android.synthetic.main.fragment_movie_list.*
import kotlinx.android.synthetic.main.movie_list_recycle_view_layout.*

class MovieListFragment : Fragment() {
    val movieViewModel by activityViewModels<MovieViewModel>()
    lateinit var movieRecycleView: MovieRecycleView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_movie_list, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        movieListRecycleView.layoutManager = GridLayoutManager(this.context,2)
        movieViewModel.allMovie.observe(viewLifecycleOwner, Observer {
            movieRecycleView = MovieRecycleView(it)
            movieListRecycleView.adapter = movieRecycleView
        })
        movieViewModel.getAllMovie()
    }
}