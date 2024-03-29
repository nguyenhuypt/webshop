@extends('backend.layouts.main')

@section('content')
    <section class="content-header">
        <h1>
            Danh sách tin tức <a href="{{route('admin.article.create')}}" class="btn bg-purple"><i class="fa fa-plus"></i> Thêm Mới</a>
        </h1>

    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Thông tin danh sách tin tức</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th width="5%">TT</th>
                                <th width="12%">Tiêu đề bài viết</th>
                                <th width="15%">Hình ảnh</th>
                                <th width="30%">Mô tả</th>
{{--                                <th>Tác giả</th>--}}
                                {{--                                <th width="25%">Mô tả chi tiết</th>--}}
{{--                                <th width="10%">Danh mục</th>--}}
                                <th width="5%">Vị trí</th>
                                <th width="5%">Trạng thái</th>
                                <th class="text-center" width="15%">Hành động</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($data as $key => $item)
                                <tr class="item-{{ $item->id }}">
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $item -> title }}</td>
                                    <td>
                                        @if($item->image)
                                            {{--                                               Kiểm tra hình ảnh tồn tại --}}
                                            <img src="{{ asset($item->image) }}" width="200" height="100" alt="">
                                        @endif
                                    </td>

                                    {{--                                     Sử dụng  {!!  !!}} để loại bỏ các thẻ html--}}
                                    <td>{!! $item->summary !!}</td>
{{--                                    <td>{{@$item->user->name}}</td>--}}
                                    {{--                                        <td>{{ $item->description }}</td>--}}
{{--                                    <td>{{@$item->category->name}}</td>--}}
                                    <td>{{ $item->position }}</td>
                                    <td>{{ $item->is_active == 1 ? 'Hiển thị' : 'Ẩn' }}</td>
                                    <td class="text-center">
                                        <a href="{{ route('admin.article.edit', ['id' => $item->id ]) }}" class="btn btn-flat bg-purple">
                                            <i class="fa fa-pencil-square"></i>
                                        </a>
                                        <a href="javascript:void(0)" class="btn btn-flat btn-danger" onclick="destroyModel('article', {{ $item->id }})" >
                                            <i class="fa fa-trash"></i>
                                        </a>                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->

                </div>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>

@endsection
