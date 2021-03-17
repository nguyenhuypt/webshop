@extends('backend.layouts.main')

@section('content')

    <section class="content-header">
        <h1>
            Quản lý nhà cung cấp
            <small>Preview</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Forms</a></li>
            <li class="active">Quản lý nhà cung cấp</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thêm thông tin nhà cung cấp</h3>
                    </div>
                    <form role="form">
                        <div class="box-body">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Name NCC</label>
                                    <input required type="text" class="form-control" id="name" name="name" placeholder="Enter name">
                                </div>
                                <div class="form-group ">
                                    <label for="exampleInputEmail1">Email </label>
                                    <input required type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                                </div>
                                <div class="form-group ">
                                    <label for="exampleInputPassword1">Phone</label>
                                    <input required type="text" class="form-control" id="phone" name="phone" placeholder="Enter Phone">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">Image</label>
                                    <input type="file" id="image" name="image">
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Địa chỉ</label>
                                    <textarea class="form-control" name="address" id="address" rows="3" placeholder="Nhập địa chỉ"></textarea>
                                </div>
                                <div class="form-group ">
                                    <label for="exampleInputEmail1">Website</label>
                                    <input type="text" class="form-control" id="website" name="website" placeholder="Enter website">
                                </div>
                                <div class="form-group ">
                                    <label for="exampleInputPassword1">Vị trí hiển thị</label>
                                    <input type="number" class="form-control" id="position" placeholder="Password" min="1" value="1">
                                </div>

                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="is_active" id="is_active"> Hiển thị
                                    </label>
                                </div>
                            </div>

                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>


            </div>


        </div>
        <!-- /.row -->
    </section>
@endsection
