var settings = {
  development: {
    db: {
      host: "demo.ctotioexeoyh.ap-southeast-1.rds.amazonaws.com",
      user: "admin",
      password: "Waynewong24.",
      database: "demo"
    },
    dsn: "mysql://admin:Waynewong24.@demo.ctotioexeoyh.ap-southeast-1.rds.amazonaws.com/demo"
  },
  test: {
    db: {
      host: "demo.ctotioexeoyh.ap-southeast-1.rds.amazonaws.com",
      user: "admin",
      password: "Waynewong24.",
      database: "demo"
    },
    dsn: "mysql://admin:Waynewong24.@demo.ctotioexeoyh.ap-southeast-1.rds.amazonaws.com/demo"
  }
};


var env = process.env.NODE_ENV
if (!env) {
  env = 'development'
};
module.exports = settings[env];
