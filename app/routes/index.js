const router = require('express').Router();
const getUser = require('../controllers/user/getUser');
const getUsers = require('../controllers/user/getUsers');
const getUsersApi = require('../controllers/user/getUsersApi').default;

router.get('/user', getUser);
router.get('/users', getUsers);
router.get('/users-web', getUsersApi);

module.exports = router;