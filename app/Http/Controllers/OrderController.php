<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderStatus;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::latest()->paginate(20);
        return view('backend.order.index', [
            'data' => $orders
        ]);
    }

    public function edit($id)
    {
        $order = Order::find($id);
        $order_status = OrderStatus::all();

        return view('backend.order.edit', [
            'order' => $order,
            'order_status' => $order_status
        ]);
    }

    public function update(Request $request, $id)
    {
        $address2 = $request->address2;
        $note = $request->note;
        $id_status = $request->order_status_id;

        $order = Order::findorFail($id);
        $order->address2 = $address2;
        $order->note = $note;
        $order->order_status_id = $id_status;
        $order->save();

        return redirect()->route('admin.order.index')->with('msg', 'Cập nhật đơn hàng thành công');
    }

}
