import express from "express";
import { verifyToken } from "../middlewares/auth.js";
import {
  deleteHinhAnhId,
  getBinhLuanHinhAnhId,
  getDanhSachHinhAnh,
  getHinhAnhId,
  getLuuHinhAnhId,
  postBinhLuanAnh,
  postHinhAnh,
  postLuuHuyLuuAnh,
  timHinhAnhTheoTen,
} from "../Controllers/imageController.js";
import upload from "../middlewares/upload.js";

const imageRoutes = express.Router();

imageRoutes.get("/getDanhSachHinhAnh", getDanhSachHinhAnh);

imageRoutes.get("/timHinhAnhTheoTen", timHinhAnhTheoTen);

imageRoutes.get("/getHinhAnhId/:hinh_id", getHinhAnhId);

imageRoutes.get(
  "/getBinhLuanHinhAnhId/:hinh_id",
  verifyToken,
  getBinhLuanHinhAnhId
);

imageRoutes.get("/getLuuHinhAnhId/:hinh_id", verifyToken, getLuuHinhAnhId);

imageRoutes.post("/postBinhLuanAnh", verifyToken, postBinhLuanAnh);

imageRoutes.post("/postLuuHuyLuuAnh", verifyToken, postLuuHuyLuuAnh);

imageRoutes.delete("/deleteHinhAnhId/:hinh_id", verifyToken, deleteHinhAnhId);

imageRoutes.post(
  "/postHinhAnh",
  verifyToken,
  upload.single("fileUpload"),
  postHinhAnh
);

export default imageRoutes;
