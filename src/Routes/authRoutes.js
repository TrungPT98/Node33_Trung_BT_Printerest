import express from "express";
import { dangKi, dangNhap } from "../Controllers/authController.js";

const authRoutes = express.Router();

authRoutes.post("/dangKi", dangKi);

authRoutes.post("/dangNhap", dangNhap);

export default authRoutes;
