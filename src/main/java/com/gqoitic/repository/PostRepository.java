package com.gqoitic.repository;

import com.gqoitic.domain.Post;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PostRepository extends CrudRepository<Post, Long> {

    List<Post> findByTag(String tag);

}
