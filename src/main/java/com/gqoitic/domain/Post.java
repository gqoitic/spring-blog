package com.gqoitic.domain;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
public class Post {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    @NotBlank(message = "Please fill the message")
    @Length(max = 2048, message = "Message is too long (more than 2048 characters)")
    private String text;

    @Length(max = 255, message = "Tag is too long (more than 255 characters)")
    private String tag;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    private String filename;

    public Post() {
    }

    public Post(String text, String tag, User user) {
        this.text = text;
        this.tag = tag;
        this.author = user;
    }

    public String getAuthorName(){
        return author != null ? author.getUsername() : "<none>";
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
}
