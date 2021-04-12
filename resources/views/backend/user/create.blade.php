@extends('backend.layouts.main')

@section('content')

    <section class="content-header">
        <h1>
            Thêm người dùng <a href="{{route('admin.user.index')}}" class="btn bg-purple btn-flat"> <i class="fa fa-bars"></i>
                Danh Sách</a>

        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Trang chủ</a></li>
            <li class="active">thông tin người dùng</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thông tin người dùng</h3>
                    </div>
                    <form role="form" action="{{route('admin.user.store')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="box-body">
                            <div class="col-md-12">


                                <div class="form-group">
                                    <label>Chọn Quyền</label>
                                    <select class="form-control" name="role_id" id="role_id">
                                        <option value="">--chọn--</option>
                                        <option value="1">Admin</option>
                                        <option value="2">Manager</option>
                                        <option value="3">Member</option>
                                        <option value="4">Khác</option>
                                    </select>
                                    @if($errors->has('role_id'))
                                        <label for="" class="text-red"
                                               style="font-weight: 600;font-size: 15px;margin-top: 5px"> <i
                                                class="fa fa-info"></i>
                                            {{$errors->first('role_id')}}
                                        </label>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Họ Tên</label>
                                    <input type="text" class="form-control" id="name" name="name"
                                           placeholder="nhập họ tên">
                                    @if($errors->has('name'))
                                        <label for="" class="text-red"
                                               style="font-weight: 600;font-size: 15px;margin-top: 5px"> <i
                                                class="fa fa-info"></i>
                                            {{$errors->first('name')}}
                                        </label>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input type="email" class="form-control" id="email" name="email"
                                           placeholder="nhập email">
                                    @if($errors->has('email'))
                                        <label for="" class="text-red"
                                               style="font-weight: 600;font-size: 15px;margin-top: 5px"> <i
                                                class="fa fa-info"></i>
                                            {{$errors->first('email')}}
                                        </label>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Mật Khẩu</label>
                                    <input type="password" class="form-control" id="password" name="password"
                                           placeholder="nhập password">
                                    @if($errors->has('password'))
                                        <label for="" class="text-red"
                                               style="font-weight: 600;font-size: 15px;margin-top: 5px"> <i
                                                class="fa fa-info"></i>
                                            {{$errors->first('password')}}
                                        </label>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputFile">Avatar</label>
                                    <input type="file" id="avatar" name="avatar">
                                    @if($errors->has('avatar'))
                                        <label for="" class="text-red"
                                               style="font-weight: 600;font-size: 15px;margin-top: 5px"> <i
                                                class="fa fa-info"></i>
                                            {{$errors->first('avatar')}}
                                        </label>
                                    @endif
                                </div>
                                <div class="form-group">

                                    <input type="checkbox" value="1" id="is_active" name="is_active">
                                    <label for="">kích hoạt tài khoản</label>
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
