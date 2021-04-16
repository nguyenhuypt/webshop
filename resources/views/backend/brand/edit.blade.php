@extends('backend.layouts.main')
@section('content')
    <section class="content-header">
        <h1>
            Chỉnh Sửa Thương Hiệu
            <small><a href="{{route('admin.brand.index')}}" class="btn bg-purple btn-flat"> <i class="fa fa-bars"></i>
                    Danh Sách</a></small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thông tin</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{  route('admin.brand.update', ['id' => $brand->id ])}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên</label>
                                <input value="{{$brand->name}}" type="text" class="form-control" id="name" name="name" placeholder="Tên thương hiệu">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">New Image</label>
                                <input type="file" id="new_image" name="new_image">
                                <img src="{{asset($brand->image)}}" width="100" alt="">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Website</label>
                                <input value="{{$brand->website}}"type="text" class="form-control" id="website" name="website" placeholder="Website">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Vị trí</label>
                                <input value="{{$brand->position}}"type="number" class="form-control" id="position" name="position" min="0" value="0">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input {{ ($brand->is_active == 1) ? 'checked' : '' }} type="checkbox" value="1" name="is_active"> Kích hoạt tài khoản
                                </label>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Cập nhật</button>
                        </div>
                    </form>
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!-- /.row -->
    </section>
@endsection
