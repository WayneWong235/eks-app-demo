var settings = {
  development: {
    db: {
      host: "demo.ctotioexeoyh.ap-southeast-1.rds.amazonaws.com",
      user: process.env.DB_USERNAME,
      password: process.env.DB_PASSWD,
      database: "demo"
    },
    dsn: "mysql://"+process.env.DB_USERNAME+":"+process.env.DB_PASSWD+"@demo.ctotioexeoyh.ap-southeast-1.rds.amazonaws.com/demo"
  },
  test: {
    db: {
      host: "demo.ctotioexeoyh.ap-southeast-1.rds.amazonaws.com",
      user: process.env.DB_USERNAME,
      password: process.env.DB_PASSWD,
      database: "demo"
    },
    dsn: "mysql://"+process.env.DB_USERNAME+":"+process.env.DB_PASSWD+"@demo.ctotioexeoyh.ap-southeast-1.rds.amazonaws.com/demo"
  }
};


var env = process.env.NODE_ENV
if (!env) {
  env = 'development'
};
module.exports = settings[env];
