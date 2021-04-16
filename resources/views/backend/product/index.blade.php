@extends('backend.layouts.main')
@section('content')

    <section class="content-header">
        <h1>
            DS Sản Phẩm
            <small><a href="{{ route('admin.product.create') }}" class="btn bg-purple btn-flat"><i class="fa fa-plus"></i>Thêm mới</a></small>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">

                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>TT</th>
                                <th>Hình ảnh</th>
                                <th style="max-with:200px">Tên SP</th>
                                <th width="10%">Danh mục</th>
                                <th>Số lượng</th>
                                <th>Giá KM</th>
                                <th>Giá Gốc</th>
                                <th width="5%">Sản phẩm Hot</th>
                                <th>Trạng thái</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($data as $key => $item)
                                <tr class="item-{{ $item->id }}"> <!-- Thêm Class Cho Dòng -->
                                    <td>{{ ($key + 1) }}</td>
                                    <td>
                                    @if ($item->image) <!-- Kiểm tra hình ảnh tồn tại -->
                                        <img src="{{ asset($item->image) }}" width="50" height="50">
                                        @endif
                                    </td>
                                    <td>{{ substr($item->name, 0, 50) }}</td>
                                    <td>{{ @$item->category->name }}</td>
                                    <td>{{ $item->stock }}</td>
                                    <td>{{ $item->sale }}</td>
                                    <td>{{ $item->price }}</td>
                                    <td>{{ ($item->is_hot == 1) ? 'Có' : 'Không' }}</td>
                                    <td>{{ ($item->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</td>
                                    <td class="text-center">
                                        <a href="{{ route('admin.product.edit', ['id' => $item->id ]) }}" class="btn btn-flat bg-purple"><i class="fa fa-pencil"></i></a>
                                        <a href="javascript:void(0)" class="btn btn-flat btn-danger" onclick="destroyModel('product', {{ $item->id }})" >
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->

                </div>
                <!-- /.box -->
                {{ $data->links() }}
            </div>
        </div>
        <!-- /.row -->
    </section>
@endsection
