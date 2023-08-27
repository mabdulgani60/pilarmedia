import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import axios from "axios";

const OrderList = () => {
  const [orders, setOrders] = useState([]);

  useEffect(() => {
    getOrders();
  }, []);

  const getOrders = async () => {
    const response = await axios.get("http://localhost:5000/orders");
    setOrders(response.data);
  };

  const deleteOrder = async (orderId) => {
    await axios.delete(`http://localhost:5000/orders/${orderId}`);
    getOrders();
  };

  return (
    <div>
      <h1 className="title">Orders</h1>
      <h2 className="subtitle">List of Orders</h2>
      <Link to="/orders/add" className="button is-primary mb-2">
        Add New
      </Link>
      <table className="table is-striped is-fullwidth">
        <thead>
          <tr>
            <th>No</th>
            <th>Pengirim</th>
            <th>Penerima</th>
            <th>Alamat</th>
            <th>Priority</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          {orders.map((order, index) => (
            <tr key={order.uuid}>
              <td>{index + 1}</td>
              <td>{order.pengirim}</td>
              <td>{order.penerima}</td>
              <td>{order.alamat}</td>
              <td>{order.priority}</td>
              <td>
                <Link
                  to={`/orders/edit/${order.uuid}`}
                  className="button is-small is-info"
                >
                  Edit
                </Link>
                <button
                  onClick={() => deleteOrder(order.uuid)}
                  className="button is-small is-danger"
                >
                  Delete
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default OrderList;