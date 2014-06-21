mongoose = require 'mongoose'
dbUrl = process.env.MONGO_DB_URL or "INSERT MONGO DB URL HERE"
console.log "mongodb url = #{dbUrl}"

db = mongoose.connect(dbUrl)

exports = module.exports = db