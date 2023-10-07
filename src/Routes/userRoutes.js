import express from "express";
import { verifyToken } from "../middlewares/auth.js";
import {
  getDanhSachAnhDaLuuNguoiDungId,
  getDanhSachAnhDaTaoNguoiDungId,
  getDanhSachNguoiDung,
  getNguoiDungId,
  putNguoiDungId,
} from "../Controllers/userController.js";

const userRoutes = express.Router();

userRoutes.get("/getDanhSachNguoiDung", verifyToken, getDanhSachNguoiDung);

userRoutes.get("/getNguoiDungId/:nguoi_dung_id", verifyToken, getNguoiDungId);

userRoutes.get(
  "/getDanhSachAnhDaLuuNguoiDungId/:nguoi_dung_id",
  verifyToken,
  getDanhSachAnhDaLuuNguoiDungId
);

userRoutes.get(
  "/getDanhSachAnhDaTaoNguoiDungId/:nguoi_dung_id",
  verifyToken,
  getDanhSachAnhDaTaoNguoiDungId
);

userRoutes.put("/putNguoiDungId/:nguoi_dung_id", verifyToken, putNguoiDungId);

export default userRoutes;
