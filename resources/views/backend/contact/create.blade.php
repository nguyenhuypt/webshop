@extends('backend.layouts.main')
@section('content')
    <section class="content-header">
        <h1>
            Thêm thông tin liên hệ
            <small><a href="{{route('admin.contact.index')}}" class="btn bg-purple btn-flat"> <i class="fa fa-bars"></i>
                    Danh Sách</a></small>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-9 col-lg-9">
                <!-- general form elements -->

                <div class="box box-primary">
                    <!-- form start -->
                    <form role="form" action="{{route('admin.contact.store')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="box-body">
                            @if($errors->any())
                                <div class="alert alert-danger alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-warning"></i> Lỗi!</h4>
                                    @foreach($errors->all() as $error)
                                        <p>{{ $error }}</p>
                                    @endforeach
                                </div>
                            @endif

                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên </label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Số Điện Thoại</label>
                                <input type="tel" class="" id="phone" name="phone">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Email</label>
                                <input type="email" class="form-control w-50" id="email" name="email">
                            </div>
                                <div class="form-group">
                                    <label>Content</label>
                                    <textarea name="content" class="form-control" rows="3" ></textarea>
                                </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Tạo</button>
                            <input type="reset" class="btn btn-default pull-right" value="Reset">
                        </div>
                    </form>
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!-- /.row -->
    </section>
@endsection


