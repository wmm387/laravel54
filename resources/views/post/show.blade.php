@extends("layout.main")

@section("content")
    <div class="col-sm-8 blog-main">
        <div class="blog-post">
            <div style="display:inline-flex">
                    <h2 class="blog-post-title">{{$post->title}}</h2>
                    <a style="margin: auto"  href="edit/{{$post->id}}">
                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                    </a>
                    <a style="margin: auto"  href="delete/{{$post->id}}">
                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                    </a>
            </div>

            <p class="blog-post-meta">
            {{$post->created_at->toFormattedDateString()}} by 
            <a href="#"></a></p>

            {!! $post->content !!}
            <div>
                    <a href="posts/{{$post->id}}/zan" type="button" class="btn btn-primary btn-lg">赞</a>

            </div>
        </div>

        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">评论</div>

        </div>

        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">发表评论</div>

            <!-- List group -->
            <ul class="list-group">
                <form action="/posts/comment" method="post">
                    {{csrf_field()}}
                    <input type="hidden" name="post_id" value="{{$post->id}}"/>
                    <li class="list-group-item">
                        <textarea name="content" class="form-control" rows="10"></textarea>
                        <button class="btn btn-default" type="submit">提交</button>
                    </li>
                </form>

            </ul>
        </div>
    </div>
@endsection