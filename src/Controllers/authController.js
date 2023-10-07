import { errCode, successCode, failCode } from "../Configs/response.js";
import { createToken } from "../middlewares/auth.js";
import sequelize from "../Models/index.js";
import initModels from "../Models/init-models.js";

import { Sequelize } from "sequelize";

const models = initModels(sequelize);


const dangKi = async (req, res) => {
  try {
    const { email, mat_khau, ho_ten, tuoi } = req.body;
    const nguoiDung = await models.nguoi_dung.findOne({
      where: { email },
    });
    if (!nguoiDung) {
      const data = await models.nguoi_dung.create({
        email,
        mat_khau,
        ho_ten,
        tuoi,
      });
      successCode(res, data, "Đăng kí thành công");
    } else {
      failCode(res, "", "Email đã tồn tại");
    }
  } catch (err) {
    errCode(res, "Lỗi Backend");
  }
};

const dangNhap = async (req, res) => {
  try {
    const { email, mat_khau } = req.body;
    const nguoiDung = await models.nguoi_dung.findOne({
      where: { email },
    });
    if (nguoiDung) {
      if (nguoiDung.mat_khau === mat_khau) {
        nguoiDung.mat_khau = "";
        const token = createToken(nguoiDung);
        successCode(res, { nguoiDung, token }, "Đăng nhập thành công");
      } else {
        failCode(res, "", "Mật khẩu không đúng");
      }
    } else {
      failCode(res, "", "Email không đúng");
    }
  } catch (err) {
    errCode(res, "Lỗi Backend");
  }
};

export { dangKi, dangNhap };
