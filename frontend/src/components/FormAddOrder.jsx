import React, { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const FormAddOrder = () => {
  const [pengirim, setPengirim] = useState("");
  const [penerima, setPenerima] = useState("");
  const [alamat, setAlamat] = useState("");
  const [priority, setPriority] = useState("");
  const [msg, setMsg] = useState("");
  const navigate = useNavigate();

  const saveOrder = async (e) => {
    e.preventDefault();
    try {
      await axios.post("http://localhost:5000/orders", {
        pengirim: pengirim,
        penerima: penerima,
        alamat: alamat,
        priority: priority,
      });
      navigate("/orders");
    } catch (error) {
      if (error.response) {
        setMsg(error.response.data.msg);
      }
    }
  };

  return (
    <div>
      <h1 className="title">Orders</h1>
      <h2 className="subtitle">Add New Order</h2>
      <div className="card is-shadowless">
        <div className="card-content">
          <div className="content">
            <form onSubmit={saveOrder}>
              <p className="has-text-centered">{msg}</p>
              <div className="field">
                <label className="label">Pengirim</label>
                <div className="control">
                  <input
                    type="text"
                    className="input"
                    value={pengirim}
                    onChange={(e) => setPengirim(e.target.value)}
                    placeholder="Pengirim"
                  />
                </div>
              </div>
              <div className="field">
                <label className="label">Penerima</label>
                <div className="control">
                  <input
                    type="text"
                    className="input"
                    value={penerima}
                    onChange={(e) => setPenerima(e.target.value)}
                    placeholder="Penerima"
                  />
                </div>
              </div>
              <div className="field">
                <label className="label">Alamat</label>
                <div className="control">
                  <input
                    type="text"
                    className="input"
                    value={alamat}
                    onChange={(e) => setAlamat(e.target.value)}
                    placeholder="Alamat"
                  />
                </div>
              </div>
              <div className="field">
                <label className="label">Priority</label>
                <div className="control">
                  <input
                    type="text"
                    className="input"
                    value={priority}
                    onChange={(e) => setPriority(e.target.value)}
                    placeholder="Priority"
                  />
                </div>
              </div>

              <div className="field">
                <div className="control">
                  <button type="submit" className="button is-success">
                    Save
                  </button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
};

export default FormAddOrder;