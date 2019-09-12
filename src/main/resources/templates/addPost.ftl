<#import "parts/common.ftl" as c>

<@c.page>

<div><h1>Add post</h1></div>

<div>
    <div class="form-group">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group mt-3">
                <input type="text" name="text" placeholder="Enter message" class="form-control"/>
            </div>

            <div class="form-group mt-3">
            <input  type="text" name="tag" placeholder="Tag" class="form-control"/>
            </div>

            <div class="form-group mt-3">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <div class="form-group mt-3">
                <button type="submit" class="btn btn-primary">Add</button>
            </div>
        </form>
    </div>
</div>

</@c.page>
