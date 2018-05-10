---
layout: default
title: Home
---

![Banner ](assets/img/repo/banner2.png)
# Welcome! 🐴

This is the README file for {{site.title}}: a manually-curated,
crowd-sourced gene annotation website for the horse. This repo contains all of
the source code, documentation, tutorials, and project tracking for the
HorseGeneAnnotation project. 

### **NOTICE!**:We are participating in the Mozilla Global Code Sprint!
[
    ![mozsprint banner](https://assets.mofoprod.net/network/images/home-2x.original.jpg)
](https://www.mozillapulse.org/entry/757)

To see what we are working on for the Mozilla Global Sprint (May 10-11), see our
 [tagged issues](https://github.com/UMN-EGGL/HorseGeneAnnotation/issues?q=is%3Aissue+is%3Aopen+label%3Amozsprint).


# Overview
This project is meant to empower *anyone* to contribute to our cause. There are many ways
to get involved. Here are a couple of steps to get started!

1. Read an overview about the problem we are trying to solve: [here](_pages/problem.md)
1. Read more about the specifics of gene annotation: [here](_pages/What_is_Gene_Annotation.md)
1. Read through our NCBI Based tutorial on how to annotate genes: [here](_pages/NCBI_tutorial.md)
1. Use our web based gene annotation program to help hack the horse genome (coming soon!)
1. Edit/remix/join the conversation and help us make this website better [here](CONTRIBUTING.md) 


[![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/HorseGeneAnnotation ) 


Chat directly with us on Gitter!


# Acknowledgements
- Banner image provided: 
    - Molly McCue
    - [hasan amar on Unsplash](https://unsplash.com/photos/CRUBL_FDUOI)
- Jekyll theme derived from [Lanyon](http://lanyon.getpoole.com/)


<!--
<div class="posts">
  {% for post in paginator.posts %}
  <div class="post">
    <h1 class="post-title">
      <a href="{{ site.baseurl }}/{{ post.url }}">
        {{ post.title }}
      </a>
    </h1>

    <span class="post-date">{{ post.date | date_to_string }}</span>

    {{ post.content }}
  </div>
  {% endfor %}
</div>

<div class="pagination">
  {% if paginator.next_page %}
    <a class="pagination-item older" href="{{ site.baseurl }}/page{{paginator.next_page}}">Older</a>
  {% else %}
    <span class="pagination-item older">Older</span>
  {% endif %}
  {% if paginator.previous_page %}
    {% if paginator.page == 2 %}
      <a class="pagination-item newer" href="{{ site.baseurl }}/">Newer</a>
    {% else %}
      <a class="pagination-item newer" href="{{ site.baseurl }}/page{{paginator.previous_page}}">Newer</a>
    {% endif %}
  {% else %}
    <span class="pagination-item newer">Newer</span>
  {% endif %}
</div>
-->
