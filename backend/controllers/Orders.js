import Order from "../models/OrderModel.js";
import {Op} from "sequelize";

export const getOrders = async (req, res) =>{
    try {
        let response;
        response = await Order.findAll({
            attributes:['uuid','pengirim','penerima','alamat','priority'],
        });
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const getOrderById = async(req, res) =>{
    try {
        const order = await Order.findOne({
            where:{
                uuid: req.params.id
            }
        });
        if(!order) return res.status(404).json({msg: "Data tidak ditemukan"});
        let response;
        response = await Order.findOne({
            attributes:['uuid','pengirim','penerima','alamat','priority'],
            where:{
                id: order.id
            }
        });
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const createOrder = async(req, res) =>{
    const {pengirim, penerima, alamat, priority} = req.body;
    try {
        await Order.create({
            pengirim: pengirim,
            penerima: penerima,
            alamat: alamat,
            priority: priority
        });
        res.status(201).json({msg: "Order Created Successfuly"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const updateOrder = async(req, res) =>{
    try {
        const order = await Order.findOne({
            where:{
                uuid: req.params.id
            }
        });
        if(!order) return res.status(404).json({msg: "Data tidak ditemukan"});
        const {pengirim, penerima, alamat, priority} = req.body;
        await Order.update({pengirim, penerima, alamat, priority},{
            where:{
                id: order.id
            }
        });
        res.status(200).json({msg: "Order updated successfuly"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const deleteOrder = async(req, res) =>{
    try {
        const order = await Order.findOne({
            where:{
                uuid: req.params.id
            }
        });
        if(!order) return res.status(404).json({msg: "Data tidak ditemukan"});
        const {pengirim, penerima, alamat, priority} = req.body;
        await Order.destroy({
            where:{
                id: order.id
            }
        });
        res.status(200).json({msg: "Order deleted successfuly"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}