const express = require("express");
const router = new express.Router();
const bcrypt = require("bcryptjs");
const Admin = require("../models/admin");
const auth = require("../middleware/auth3");

router.post("/admins", async (req, res) => {
  const admin = new Admin(req.body);
  try {
    await admin.save();
    const token = await admin.generateAuthToken();
    res.status(201).send({ admin, token });
  } catch (e) {
    res.status(400).send(e);
  }
}); /////// signup

router.post("/admins/login", async (req, res) => {
  try {
    const admin = await Admin.findByCredentials(
      req.body.Identity,
      req.body.password
    );
    const token = await admin.generateAuthToken();
    res.send({ admin, token });
  } catch (e) {
    res.status(400).send();
  }
}); /////// login

router.post("/admins/logoutAll", auth, async (req, res) => {
  try {
    req.admin.tokens = [];
    await req.admin.save();
    res.send();
  } catch (e) {
    res.status(500).send();
  }
}); //////// logoutAll

router.get("/admins/me", auth, async (req, res) => {
  res.send(req.admin);
}); ////////read

router.patch("/admins/me", auth, async (req, res) => {
  const updates = Object.keys(req.body);
  const allowedUpdates = ["name", "password", "phone"];
  const isValidOperation = updates.every((update) => {
    return allowedUpdates.includes(update);
  });

  if (!isValidOperation) {
    return res.status(400).send({ error: "invalid update" });
  }

  try {
    updates.forEach((update) => (req.admin[update] = req.body[update]));
    await req.admin.save();
    res.send(req.admin);
  } catch (e) {
    res.status(400).send();
  }
}); //////// update

module.exports = router;
