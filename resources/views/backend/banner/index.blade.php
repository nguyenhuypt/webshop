@extends('backend.layouts.main')

@section('content')
    <section class="content-header">
        <h1>
            Danh sách Banners <a href="{{route('admin.banner.create')}}" class="btn bg-purple"><i class="fa fa-plus"></i> Thêm Mới</a>
            {{--            <small>advanced tables</small>--}}
        </h1>

    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                {{--                    <div class="box-header">--}}
                {{--                        <h3 class="box-title">Data Table With Full Features</h3>--}}
                {{--                    </div>--}}
                <!-- /.box-header -->
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>TT</th>
                                <th>Tiêu đề</th>
                                <th>Hình ảnh</th>
                                <th>Target</th>
                                <th>Loại</th>
                                <th>Vị trí</th>
                                <th>Trạng thái</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($data as $key => $item)
                                {{--                                Phân biệt từng dòng--}}
                                <tr class="item-{{ $item->id }}">
                                    {{--                                    Thêm class cho hành động--}}
                                    <td>{{ $key+1 }}</td>
                                    <td>{{ $item->title }}</td>
                                    <td>
                                        @if( ($item->image))
                                            {{--                                            Kiểm tra hình ảnh tồn tại--}}
                                            <img src="{{ asset($item->image) }}" width="100" height="50" alt="">
                                        @endif
                                    </td>
                                    <td>{{ $item->target }}</td>
                                    <td>{{ $item->type }}</td>
                                    <td>{{ $item->position }}</td>
                                    <td>{{ $item->is_active == 1 ? 'Hiển thị' : 'Ẩn' }}</td>
                                    <td class="text-center">
                                        <a href="{{ route('admin.banner.edit', ['id' => $item->id ]) }}" class="btn btn-flat bg-purple">
                                            <i class="fa fa-pencil-square"></i>
                                        </a>
                                        <a href="javascript:void(0)" class="btn btn-flat btn-danger" onclick="destroyModel('banner', {{ $item->id }})" >
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
