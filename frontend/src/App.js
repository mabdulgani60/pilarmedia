import { BrowserRouter, Routes, Route } from "react-router-dom";
import Dashboard from "./pages/Dashboard.jsx";
import Login from "./components/Login.jsx";
import Users from "./pages/Users.jsx";
import Orders from "./pages/Orders.jsx";
import AddUser from "./pages/AddUser.jsx";
import EditUser from "./pages/EditUser.jsx";
import AddOrder from "./pages/AddOrder.jsx";
import EditOrder from "./pages/EditOrder.jsx";

function App() {
  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={ <Login /> }/>
          <Route path="/dashboard" element={ <Dashboard /> }/>
          <Route path="/users" element={ <Users /> }/>
          <Route path="/users/add" element={ <AddUser /> }/>
          <Route path="/users/edit/:id" element={ <EditUser /> }/>
          <Route path="/orders" element={ <Orders /> }/>
          <Route path="/orders/add" element={ <AddOrder /> }/>
          <Route path="/orders/edit/:id" element={ <EditOrder /> }/>
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
