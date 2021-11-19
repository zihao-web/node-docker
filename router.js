const Router = require('@koa/router');

const router = new Router();

router.get('/name', (ctx) => {
  ctx.body = '张三';
});

router.get('/info', (ctx) => {
  // ctx.router available
  ctx.body = {
    name: '张三',
    age: 18,
  };
});


module.exports = router;