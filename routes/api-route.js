const express = require('express');
const moment = require('moment');
const path = require('path');
const fs = require('fs-extra');
const ip = require('request-ip');
const { upload, imgExt } = require('../modules/multer');
const { pool, sqlGen: sql } = require('../modules/mysql-pool');
const { err, alert, extName, srcPath, realPath } = require('../modules/util');
const pagers = require('../modules/pager');
const { isUser, isGuest } = require('../modules/auth');
const router = express.Router();

router.get('/list', async (req, res, next) => {
	try {
		let sql, value, r, rs;
		sql = 'SELET * FROM board ORDER BY id DESC';
		r = await pool.query(sql);
		res.json(r[0]);
	}
	catch(e) {
		res.json(e || e.message);
	}
});

module.exports = router;